#include <iostream>
#include <string>

//#include "/Users/eddie/GitRepo/smart-paging/smart-paging/src/include/fadv.h"
#include "fadv.h"

int main(int argc, char **argv)
{
	std::string file_name = "/Users/eddie/GitRepo/smart-paging/smart-paging/smart-paging.txt";
	int ret = fadv(file_name.c_str());
	return 0;
}
