/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   abstract_syntax_tree.h                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sel-kham <sel-kham@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/28 15:48:00 by sel-kham          #+#    #+#             */
/*   Updated: 2022/06/30 21:43:52 by sel-kham         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef ABSTRACT_SYNTAX_TREE_H
# define ABSTRACT_SYNTAX_TREE_H

# include<stdio.h>
# include<string.h>
# include<stdlib.h>
# include<stdbool.h>
# include<ctype.h>
# include<readline/readline.h>
# include<readline/history.h>
# include "tokenizer.h"
# include "interpreter.h"

void	print_error(const char *err_msg);
void	print_prompt(const char *prmpt);

typedef struct s_operation
{
	int		left;
	char	op;
	int		right;
}	t_operation;

#endif