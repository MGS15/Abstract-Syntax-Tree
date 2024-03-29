# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sel-kham <sel-kham@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/28 17:31:23 by sel-kham          #+#    #+#              #
#    Updated: 2022/08/06 22:39:49 by sel-kham         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

INCLUDES_DIR :=includes
SRC_DIR := src
OBJ_DIR := obj
HEADERS_DIR := $(addprefix $(INCLUDES_DIR)/, headers)

HEADERS := abstract_syntax_tree.h stack.h
HEADERS := $(addprefix $(HEADERS_DIR)/, $(HEADERS))
SRC :=  helpers.c ft_atoi.c stack_handler.c
OBJ := $(addprefix $(OBJ_DIR)/, $(SRC:.c=.o))


NAME := ast
MAIN := $(addprefix $(SRC_DIR)/, abstract_syntax_tree.c)

READLINE := $(shell brew --prefix readline)
CFLAGS := -Wall -Wextra -Werror -g 
IFLAGS := -I $(READLINE)/include
LFLAGS := -L $(READLINE)/lib -lreadline \
        -L $(READLINE)/lib -lhistory

all: $(NAME)

$(NAME): $(OBJ) $(MAIN)
	$(CC) $(CFLAGS) $(IFLAGS) $(LFLAGS) $(OBJ) $(MAIN) -o $@

$(OBJ_DIR)/%.o : $(SRC_DIR)/%.c $(HEADERS)
	mkdir -p obj
	$(CC) $(CFLAGS) $(IFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ_DIR)/*.o
	
fclean: clean
	rm -rf $(NAME)

re: fclean all
