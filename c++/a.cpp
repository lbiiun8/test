#include <iostream>
#include <vector>
#include <set>
#include <algorithm>

using namespace std;

template <typename T>
bool NextValue(vector<T> &v)
{
	for ( auto itAseNext = v.rbegin(), itAse = itAseNext++; itAse != v.rend() && itAseNext != v.rend(); itAse = itAseNext++ )
	{
		if (*itAse > *itAseNext)
		{
			for ( auto itSwap = v.rbegin();itSwap != v.rend(); ++itSwap )
				if (*itSwap > *itAseNext)
				{
					swap(*itAseNext, *itSwap);
					break;
				}
			reverse(v.rbegin(), itAseNext);
			return true;
		}
	}
	return false;
}

template <typename T>
void print(const vector<T> &v)
{
	for (const auto iter : v)
	{
		cout << iter ;
	}
	cout << endl;
}

template <typename T>
vector<vector<T>> a( const multiset<T> &input )
{
	vector<vector<T>> ret;

	if (!input.empty())
	{
		vector<T> i(input.begin(), input.end());
		do
		{
			print(i);
//			ret.push_back(i);
		}
		while ( NextValue(i) );
	}
	return ret;
}

int main(int argc, char *argv[])
{
	multiset<string> setArgv;
	for (int i = 1; i < argc; ++i)
	{
		setArgv.insert(argv[i]);
	}
	auto res = a(setArgv);
//	for (const auto&i : res)
//	{
//		print(i);
//	}
	return 0;
}

