# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dalara-s <dalara-s@student.42barcelon      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/09 15:38:34 by dalara-s          #+#    #+#              #
#    Updated: 2024/10/11 12:41:29 by dalara-s         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS = ./ft_printf.c ./ft_print_hex.c  ./ft_print_nbr.c 

OBJS = ${SRCS:.c=.o}

FLAGS = -Wall - Wextra -Werror

all: ${NAME}

.c.o:
	cc -Wall -Wextra -Werror -c $< -o $(<:.c=.o)

${NAME}: ${OBJS} Makefile ft_printf.h
	ar rc ${NAME} ${OBJS}

clean:
	/bin/rm -f ${OBJS}

fclean: clean
	/bin/rm -f ${NAME}

re: fclean all

.PHONY: re fclean clean  all .c.o		
	
