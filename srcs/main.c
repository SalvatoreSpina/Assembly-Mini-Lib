#include "functions/libasm.h"

void test_strlen() {
	char str[] = "Hello World";
	printf("String: %s\nStrlen: %ld\nFt_strlen: %ld\n\n", str, strlen(str), ft_strlen(str));
}

void test_strcpy() {
	char src1[] = "Hello World";
	char dest1[12];
	ft_strcpy(dest1, src1);
	printf("String: %s\nFt_strcpy: %s\n\n", src1, strcpy(dest1, src1));
	
}

void test_strcmp() {
	const char src1[] = "Hello World";
	const char src2[] = "Hello Worl";
	const char src3[] = "Hello World";
	const char src4[] = "Hello World!";

	printf("Base string: %s\n", src1);
	printf("String: %s | Return value: %d\n", src2, strcmp(src1, src2));
	printf("String: %s | Return value: %d\n", src3, strcmp(src1, src3));
	printf("String: %s | Return value: %d\n\n", src4, strcmp(src1, src4));		
}

void test_write() {
	int fd = open("test.txt", O_WRONLY | O_CREAT | O_TRUNC, 0644);
	int fd2 = open("ft_test.txt", O_WRONLY | O_CREAT | O_TRUNC, 0644);
	write(fd, "Hello World", 11);
	ft_write(fd2, "Hello World", 11);
	close(fd);
	close(fd2);
}

void test_read() {
	int fd = open("test.txt", O_RDONLY);
	int fd2 = open("ft_test.txt", O_RDONLY);
	char buf[100];
	char buf2[100];
	read(fd, buf, 11);
	ft_read(fd2, buf2, 11);
	int fake_fd = -1;
	ft_read(fake_fd, buf2, 11);
}

void test_strdup() {
	char *str = "Hello World";
	char *dup = ft_strdup(str);
	printf("String: %s\nFt_strdup: %s\n", str, dup);
	free(dup);
}

int tester(const int n) {
	if (n & (1 << 1))
		test_strlen();
	if (n & (1 << 2))
		test_strcpy();
	if (n & (1 << 3))
		test_strcmp();
	if (n & (1 << 4))
		test_write();
	if (n & (1 << 5))
		test_read();
	if (n & (1 << 6))
		test_strdup();
	if (n & (1 << 7))
		system("leaks test | grep leak");
	return 0;
}

int main(int ac, char **av) {
	return (ac == 2) ? tester(atoi(av[1])) : 1;
}