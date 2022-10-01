#pragma once

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <fcntl.h>
#include <errno.h>

size_t		ft_strlen(const char *s);
char		*ft_strcpy(char *dest, const char *src);
int			ft_strcmp(const char *s1, const char *s2);
char		*ft_strdup(const char *s);
ssize_t		ft_write(int fd, const void *buf, size_t count);
ssize_t		ft_read(int fd, void *buf, size_t count);