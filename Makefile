SRCS		=	./srcs/ft_strlen.s \
				./srcs/ft_strcpy.s \
				./srcs/ft_strcmp.s \
				./srcs/ft_write.s \
				./srcs/ft_read.s \
				./srcs/ft_strdup.s

OBJS		=	$(SRCS:.s=.o)

NA			=	nasm
NA_FLAGS	=	-f macho64
FLAGS 		=	-Wall -Werror -Wextra
NAME		=	libasm.a
TEST		=	test

%.o:			%.s
				$(NA) $(NA_FLAGS) $<

all:			$(NAME)

$(NAME):		$(OBJS)
				ar rcs $(NAME) $(OBJS)

clean:
				rm -rf $(OBJS)

fclean:			clean
				rm -rf $(NAME) $(TEST)

re:				fclean $(NAME)

test:			$(NAME)
				gcc $(FLAGS) -L. -lasm -o $(TEST) main.c

.PHONY:			clean fclean re test