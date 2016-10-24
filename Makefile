SRC = srcs
INC = includes
LIB = libft.a

CC = gcc
CFLAGS = -Wall -Wextra -Werror

LIST_FILES  = ft_putchar.c ft_putstr.c
FILES = $(patsubst %,$(SRC)/%,$(LIST_FILES))

OBJS = $(patsubst %.c,%.o,$(LIST_FILES))



all: $(NAME)
	$(CC) $(CFLAGS) main.c -L. -lft -I $(INC)

lib:
	@echo "Creation de la librairie"
	$(CC) -c $(FILES)
	ar rc $(LIB) $(OBJS)
	ranlib $(LIB)

clean:
	/bin/rm -f *.o

fclean:
	/bin/rm -f $(NAME)
