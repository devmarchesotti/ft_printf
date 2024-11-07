/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dalara-s <dalara-s@student.42barcelon      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/08 15:03:29 by dalara-s          #+#    #+#             */
/*   Updated: 2024/10/11 12:36:34 by dalara-s         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <stdio.h>
# include <stdarg.h>
# include <unistd.h>

int		print_str(char *s);
int		count_digits(int n);
int		count_digits_u(unsigned int n);
int		print_c(char c);
int		print_h(unsigned long int nb, char *hex);
int		print_p(void *s);
int		ft_printf(char const *s, ...);
void	print_u(unsigned int n);
void	print_nbr(int n);

#endif
