#include "taskengine.h"
#include <iostream>
#include <sstream>
#include <string>
#include <time.h>
#include "debug.h"

class Foo
{
	public:
		Foo();
		void doSomething();
		void printIt ( const DataContainer& data );
};

class Baz : public Task
{
	public:
		Baz()
		{
			steps = 0;
		}
		float sleepTime;
	protected:
		bool doStep();
		void threadWillStart();
	private:
		std::vector<std::string> log;
		int steps;

};

void Baz::threadWillStart()
{
	InformationManager::Instance()->postDataToFeed ( "system", DataContainer ( std::string ( "Thread started" ) ) );
}

bool Baz::doStep()
{

	time_t myTime = time ( NULL );
	boost::this_thread::sleep ( boost::posix_time::milliseconds ( sleepTime * 1000 ) );
	time_t mySecondTime = time ( NULL );
	Dout << "Slept " << ( mySecondTime - myTime ) << " seconds - Baz-Step executed";
	steps++;
	if ( steps > 10 )
	{
		return false;
	}
	return true;
}

class Bar : public DataProvider
{
	public:
		Bar()
		{
			InformationManager::Instance()->offerData ( "system", this );
			InformationManager::Instance()->offerData ( "mistake", this );
		}
		DataContainer getData ( const DataIdentifier& id )
		{
			if ( id.isPartOf ( "system" ) )
			{
				if ( id.isPartOf ( "system.greeting" ) )
				{
					return DataContainer ( std::string ( "Sample Data" ) );
				}
				else if ( id.isPartOf ( "system.number" ) )
				{
					return DataContainer ( 3232 );
				}
				else
				{
					return DataContainer ( std::string ( "data n/a" ) );
				}
			}
			else
			{
				return DataContainer ( std::string ( "not responsible for this" ) );
			}
		}
};



Foo::Foo()
{
}

void Foo::doSomething()
{
	Bar myBar;
	DataContainer data = InformationManager::Instance()->requestData ( "system.greeting" );
	std::string string = boost::any_cast<std::string> ( data.data );
	printf ( "Hello world !\n" );
	std::cout << string << std::endl;
	data = InformationManager::Instance()->requestData ( "system.text" );
	string = boost::any_cast<std::string> ( data.data );
	std::cout << string << std::endl;
	data = InformationManager::Instance()->requestData ( "mistake.dda" );
	string = boost::any_cast<std::string> ( data.data );
	std::cout << string << std::endl;
	data = InformationManager::Instance()->requestData ( "system.number" );
	int num = boost::any_cast<int> ( data.data );
	std::cout << num << std::endl;

	InformationManager::Instance()->subscribeToFeed ( "system", boost::bind( &Foo::printIt, this, _1) );

	Threadmanager myManager;
	myManager.setThreadingMode ( THREADING_FREE_WHEELING );
	Baz myTask, myOtherTask;
	myTask.sleepTime = 0.5;
	myOtherTask.sleepTime = 1;
	myManager.registerTask ( &myTask );
	myManager.registerTask ( &myOtherTask );
	myManager.run();
	myManager.waitForThreadsToFinish();
}

void Foo::printIt ( const DataContainer& data )
{
	std::string myString = boost::any_cast<std::string> ( data.data );
	Dout << "Received data: " << myString;
}


int main ( int argc, char** argv )
{
	//threadNames[ boost::this_thread::get_id() ] = "Main Thread";
	initDebug();
	Foo foo;
	foo.doSomething();
	return 0;
}
