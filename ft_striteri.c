/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_striteri.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tishihar <tishihar@student.42tokyo.jp>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/31 14:32:32 by tishihar          #+#    #+#             */
/*   Updated: 2024/06/01 00:54:02 by tishihar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_striteri(char *s, void (*f)(unsigned int, char*))
{
	unsigned int	curr;

	if (!s)
		return ;
	curr = 0;
	while (*s)
	{
		f(curr, s);
		s++;
		curr++;
	}
	return ;
}
