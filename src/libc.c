#include <stdio.h>
#include <stdlib.h>
#include <sys/errno.h>
#include <sys/fcntl.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <sys/times.h>
#include <sys/types.h>
#include <unistd.h>

/*
 * This is an extremely light-weight libc implementation: most of the calls
 * just return ENOSYS. The functions are mostly here to make sure the proper
 * symbols are defined, so linking works as expected.
 */

extern int main();

/*
 * pointer to array of char * strings that define the current environment
 * variables
 */
char **environ;

__attribute__((noreturn))
void _exit(int status)
{
	for (;;);
}

void *_sbrk(intptr_t increment)
{
	errno = ENOMEM;
	return NULL;
}

ssize_t _write(int fd, const void *buf, size_t count)
{
	errno = ENOSYS;
	return -1;
}

int _close(int file)
{
	errno = ENOSYS;
	return -1;
}

off_t _lseek(int file, off_t ptr, int whence)
{
	errno = ENOSYS;
	return -1;
}

ssize_t _read(int fd, void *buf, size_t count)
{
	errno = ENOSYS;
	return -1;
}

int _fstat(int file, struct stat *st)
{
	errno = ENOSYS;
	return -1;
}

int _isatty(int fd)
{
	switch (fd) {
	case STDIN_FILENO:
	case STDOUT_FILENO:
	case STDERR_FILENO:
		return 1;
	default:
		errno = EBADF;
		return 0;
	}
}
