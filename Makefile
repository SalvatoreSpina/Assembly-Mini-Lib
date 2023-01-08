NAME = libasm.a
TEST = test

SRCS = ./srcs/functions/ft_strlen.s \
		./srcs/functions/ft_strcpy.s \
		./srcs/functions/ft_strcmp.s \
		./srcs/functions/ft_write.s \
		./srcs/functions/ft_read.s \
		./srcs/functions/ft_strdup.s

OBJS =	$(SRCS:.s=.o)

%.o:	%.s
	@nasm -f macho64 $<

all:	$(NAME)

$(NAME):$(OBJS)
	@ar rcs $(NAME) $(OBJS)

clean:
	@rm -rf $(OBJS)

fclean:	clean
	@rm -rf $(NAME) $(TEST)

re:	fclean $(NAME)

test:	$(NAME)
	@gcc -Wall -Werror -Wextra -L. -lasm -o $(TEST) srcs/main.c
	
.PHONY:	clean fclean re test strlen strcpy strdup strcmp write read
