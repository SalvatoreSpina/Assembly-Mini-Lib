#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

extern int ft_strlen(const char* str);
extern char* ft_strcpy(char* dest, const char* src);
extern int ft_strcmp(const char* s1, const char* s2);
extern char* ft_strdup(const char* str);
extern ssize_t ft_write(int fd, const void* buf, size_t count);
extern ssize_t ft_read(int fd, void* buf, size_t count);

int main()
{
	const char* src = "Hello, World!";
	char dest[128];

	printf("strlen of '%s': %d\n", src, ft_strlen(src));
	printf("strcpy from '%s' to '%s'\n", src, ft_strcpy(dest, src));
	printf("strcmp between '%s' and '%s': %d\n", src, dest, ft_strcmp(src, dest));
	printf("strdup of '%s': %s\n", src, ft_strdup(src));
	ft_write(1, src, ft_strlen(src));
	ft_write(1, '\n', 1);

	char buf[128];
	ft_read(0, buf, sizeof(buf));
	printf("read from stdin: %s\n", buf);

	return 0;
}