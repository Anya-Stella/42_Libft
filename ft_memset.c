/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memset.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tishihar <tishihar@student.42tokyo.jp>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/17 23:22:38 by tishihar          #+#    #+#             */
/*   Updated: 2024/04/18 05:21:39 by tishihar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <cstddef>

void	*ft_memset(void *b, int c, size_t len)
{
	unsigned char	*p;

	p = (unsigned char *) b;
	while (len--)
	{
		*p = (unsigned char)c;
		p++;
	}
	return (b);
}