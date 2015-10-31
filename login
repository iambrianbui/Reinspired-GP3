// This program lets the user enter a filename.
#include <iostream>
#include <string>
#include <fstream>        // Needed to use files
using namespace std;

int main()
{
	string username, password, info;
	int admin;

	// Get the filename from the user
Beginning:
	cout << "Please enter your username:  ";
	cin >> username;

	//  Ask if the user is an administrator.
	AdminCheck:
	cout << "Are you an admin?" << endl;
	cout << "1...No, I am not an admin." << endl;
	cout << "2...Yes, I am an admin." << endl;
	cin >> admin;
	switch (admin)
	{
	case 1:
	{
		username += "_player.txt";
		break;
	}
	case 2:
	{
		username += "_admin.txt";
		break;
	}
	default:
		cout << "Response not recognized." << endl;
		goto AdminCheck;
	}


	// Open the input file
		ifstream inputFile(username.c_str());

	// If the file successfully opened, process it
		if (inputFile)
	{
	// Prompt user for password
		cout << "Please enter your password:  ";
		cin >> password;
	// Read password
		string strInput;
		getline(inputFile, strInput);
		if (password == strInput)
		{
			cout << "Hello, " << username << "!" << endl;
			cout << "Welcome back!" << endl;
		}
		else
			cout << "Wrong password." << endl;

		// Close the file.
		inputFile.close();
	}
	else
	{
		// Display an error message
		cout << "Username not recognized." << endl;
		goto Beginning;
	}

	system("pause");
	return 0;
}
