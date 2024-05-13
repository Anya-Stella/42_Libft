/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tishihar <tishihar@student.42tokyo.jp>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/18 05:33:39 by tishihar          #+#    #+#             */
/*   Updated: 2024/05/13 23:30:54 by tishihar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memcpy(void *dst, const void *src, size_t n)
{
	const unsigned char	*s;
	unsigned char		*d;

	s= (const unsigned char *)src;
	o= (unsigned char *)dst; 

	if (!dst && !src)
		return (NULL);

	while(n--)
	{
		*d = *s;
		s++;
		d++;
	}
	return (dst);
}
