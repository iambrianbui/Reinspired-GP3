// This program lets the user enter a filename.
#include <iostream>
#include <string>
#include <fstream>        // Needed to use files
using namespace std;

int main()
{
	string username, password, info;

	// Get the filename from the user
Beginning:
	cout << "Please enter your username:  ";
	cin >> username;

	// Open the input file
		ifstream inputFile(username.c_str());

	// If the file successfully opened, process it
		if (inputFile)
	{
	// Prompt user for password
		cout << "Please enter your password:  ";
		cin >> password;
	// Read password
		std::string strInput;
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
