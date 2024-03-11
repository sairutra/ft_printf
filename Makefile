include ./sources.mk

LIB_DIR := libft

CC = cc

CFLAGS = -Wall -Werror -Wextra

OBJS = $(SOURCES:.c=.o)

NAME = libftprintf.a

.PHONY: all clean fclean re

all: $(NAME) 

$(NAME): $(OBJS)
	@ar rcs $(NAME) $(OBJS)

 %.o: %.c
	@$(CC) $(CFLAGS) -c $<  -o $@

clean:
	@rm -f $(OBJS)

fclean: clean
	@rm -f $(NAME)

re: fclean all
