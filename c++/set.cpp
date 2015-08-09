#include <iostream>
#include <set>
#include <vector>

using namespace std;

int main()
{
	set<int> 	s = {1,2,3,4,5,6};
	vector<int> v = {1,2,3,4,5,6};

	cout << *(v.begin() + 2) << endl;
//	cout << *(s.begin() + 2) << endl;
//	set<int>::iterator itS = s.begin();
//	itS += s.count(*itS);
//	cout << *itS << endl;
	return 0;
}

