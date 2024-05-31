/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_striteri.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tishihar <wingstonetone9.8@gmail.com>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/31 14:32:32 by tishihar          #+#    #+#             */
/*   Updated: 2024/05/31 15:15:10 by tishihar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void ft_striteri(char *s, void (*f)(unsigned int, char*))
{
	unsigned int curr;
	
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