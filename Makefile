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
	@rm -rf $(NAME) $(TEST) *.txt

re:	@fclean $(NAME)

test:	$(NAME)
	@gcc -Wall -Werror -Wextra -L. -lasm -o $(TEST) srcs/main.c

strlen:
	@make test
	@./test 2

strcpy:
	@make test
	@./test 4

strcmp:
	@make test
	@./test 8

strdup:
	@make test
	@./test 16

write:
	@make test
	@./test 32

read:
	@make test
	@./test 64

lib:
	@make test
	@./test 127

leaks:
	@make test
	@./test 255
	
.PHONY:	clean fclean re test strlen strcpy strdup strcmp write read
