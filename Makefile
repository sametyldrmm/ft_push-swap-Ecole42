# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: samet <samet@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/15 16:23:46 by syildiri          #+#    #+#              #
#    Updated: 2023/04/09 21:57:09 by samet            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS			= ft_rules1.c ft_rules2.c ft_rules3.c main.c ps1.c ps2.c ps3.c ps4.c 
OBJS			= $(SRCS:.c=.o)
NAME			= push_swap
CC				= gcc
RM				= rm -f
CFLAGS			= -Wall 

all : ${NAME}

$(NAME) : ${OBJS}
	make -C libft
	$(CC) $(OBJS) -o $(NAME) libft/libft.a

clean :
	make clean -C ./libft
	${RM} ${OBJS}

fclean : clean
	make fclean -C ./libft
	${RM} ${NAME}

re : fclean all

run500 : all 
	ARG=$$(shuf -i 1-1000 -n 500 | tr '\n' ' '); ./push_swap $$ARG

run100 : all 
	ARG=$$(shuf -i 1-1000 -n 100 | tr '\n' ' '); ./push_swap $$ARG

run5 : all 
	ARG=$$(shuf -i 1-1000 -n 5 | tr '\n' ' '); ./push_swap $$ARG

run3 : all 
	ARG=$$(shuf -i 1-1000 -n 3 | tr '\n' ' '); ./push_swap $$ARG

.PHONY: all clean fclean re
