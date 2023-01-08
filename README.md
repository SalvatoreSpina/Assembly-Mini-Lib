# Mini ASM Library

This project contains a mini library written in x86-64 assembly that provides implementations of several basic string manipulation functions.

## Function List

- `_ft_strlen`: Calculates the length of a null-terminated string.
- `_ft_strcpy`: Copies a null-terminated string to a destination buffer.
- `_ft_strcmp`: Compares two null-terminated strings and returns an integer indicating their lexicographical order.
- `_ft_strdup`: Allocates memory for a copy of a null-terminated string and copies the string to the allocated memory.
- `_ft_write`: Writes a specified number of bytes to a file descriptor.
- `_ft_read`: Reads a specified number of bytes from a file descriptor.

## Dependencies

This library depends on the following functions from the C standard library:

- `malloc`: Allocates memory dynamically.
- `write`: Writes a specified number of bytes to a file descriptor.
- `read`: Reads a specified number of bytes from a file descriptor.

## Usage

To use these functions in your own project, you can compile the ASM source files and link them with your C/C++ code. You will also need to include the `stdlib.h` and `unistd.h` header files in your C/C++ code to access the `malloc`, `write`, and `read` functions.

## Example

Here are some examples of how to use these functions in C/C++ code

``` c

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
    
```

