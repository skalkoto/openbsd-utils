#include "port.h"

#include <sys/ioctl.h>
#include <linux/fs.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <err.h>

#define BLOCKSIZE	512

int get_size(int fd, unsigned int *size)
{

	struct stat 	st;

	if (ioctl(fd, BLKGETSIZE, size) >= 0)
		return 0;

	if (fstat(fd, &st) == 0)
		if (S_ISREG(st.st_mode)) {
			*size = st.st_size / BLOCKSIZE;
			return 0;
		}

	return -1;
}

