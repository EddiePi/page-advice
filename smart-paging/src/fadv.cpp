#include <fcntl.h>
#include <cstdlib>
#include <unistd.h>
#include <sys/types.h>
#include <iostream>
#include <sys/stat.h>
#include <limits.h>
#include <errno.h>
#include <iostream>
#include <string>

/* tell the system which file cache to release
 * 
 * return 0 if success; otherwise, return 1
 */

int fadv(std::string file_name)
{
	int fd;
	int ret;
	const char *file_name_char = file_name.c_str();
	//TODO: sanity check for the file name
		
	fd = open(file_name_char, O_RDWR);

	if (fd < 0) {
		std::cout << "cannot open file: " << file_name_char << std::endl;
		return 1;
	}

	ret = posix_fadvise(fd, 0, 0, POSIX_FADV_DONTNEED);
	if (ret) {
		std::cout << stderr << "fadvise returned " << ret << "errno=" << errno << std::endl;
		return 1;
	}
	
	std::cout << "successfully cache out file: " << file_name_char << std::endl;
	return 0;
}
