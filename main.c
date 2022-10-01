#include "srcs/libasm.h"

void test_strlen() {
	char *str[5] = {
		"Hello World",
		"Assembly is nice",
		"That's a reaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaally long line",
		"This is a test",
		"",
	};
	for (int i = 0; i < 5; i++) {
		printf("String: %s\nStrlen: %ld\n Ft_strlen: %ld\n\n", str[i], strlen(str[i]), ft_strlen(str[i]));
	}
}

void test_strcpy() {
	const char src1[] = "Hello World";
	const char src2[] = "Assembly is nice";
	char dest1[12];
	ft_strcpy(dest1, src1);
	char dest2[17];
	ft_strcpy(dest2, src2);
	printf("String: %s\nFt_strcpy: %s\n\n", src1, strcpy(dest1, src1));
	printf("String: %s\nFt_strcpy: %s\n\n", src2, strcpy(dest2, src2));
	
}

void test_strcmp() {
	const char src1[] = "Hello World";
	const char src2[] = "A";
	const char src3[] = "Hello World";
	const char src4[] = "Hello WorldZ";

	printf("Base string: %s\n", src1);
	printf("String: %s | Return value: %d", src2, strcmp(src1, src2));
	printf("String: %s | Return value: %d", src3, strcmp(src1, src3));
	printf("String: %s | Return value: %d", src4, strcmp(src1, src4));		
}

void test_write() {
	int fd = open("test.txt", O_WRONLY | O_CREAT | O_TRUNC, 0644);
	int fd2 = open("ft_test.txt", O_WRONLY | O_CREAT | O_TRUNC, 0644);
	write(fd, "Hello World", 11);
	ft_write(fd, "Hello World", 11);
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
	char *str2 = "Assembly is nice";
	printf("String: %s\nFt_strdup: %s\n\n", str, ft_strdup(str));
	printf("String: %s\nFt_strdup: %s\n\n", str2, ft_strdup(str2));
}

int main() {
	test_strlen();
	test_strcpy();
	test_strcmp();
	test_write();
	test_read();
	test_strdup();
	return 0;
}