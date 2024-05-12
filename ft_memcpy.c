/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tishihar <tishihar@student.42tokyo.jp>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/18 05:33:39 by tishihar          #+#    #+#             */
/*   Updated: 2024/05/12 22:25:09 by tishihar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void *ft_memcpy(void *dst, const void *src, size_t n)
{
	const unsigned char *s = (const unsigned char *)src;
	unsigned char *d = (unsigned char *)dst;

	while(n--)
	{
		*d = *s;
		s++;
		d++;
	}

	return (dst);
}

