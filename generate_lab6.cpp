#include <iostream>
#include <vector>
#include <string>
#include <fstream>
#include <random>

using namespace std;
int main()
{
	ifstream myfile("people_2020.txt");
	vector<string> strings;
	string line;
	if (myfile.is_open())
		while (getline (myfile,line))
			strings.push_back(line);
	myfile.close();
	random_device device;
	mt19937 generator(device());
	uniform_int_distribution<int> distribution1(1,17);
	std::uniform_int_distribution<int> distribution2(18,50);
        for (auto i: strings)
	{
		i+=" "+to_string(distribution1(generator));
		i+=" "+to_string(distribution2(generator));
		i+=" "+to_string(distribution2(generator))+"\n";
		cout<<i;
	}
	return 0;
}
