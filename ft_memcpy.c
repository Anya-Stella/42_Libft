/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tishihar <wingstonetone9.8@gmail.com>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/18 05:33:39 by tishihar          #+#    #+#             */
/*   Updated: 2024/05/16 15:09:16 by tishihar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memcpy(void *dst, const void *src, size_t n)
{
	const unsigned char	*s;
	unsigned char		*d;

	s = (const unsigned char *)src;
	d = (unsigned char *)dst;
	if (!dst && !src)
		return (NULL);
	while (n--)
	{
		*d = *s;
		s++;
		d++;
	}
	return (dst);
}

#include <stdio.h>

int main(void)
{
	char *src1 = "helloooooo,wooooorlds!!";
	printf("%s : this is a src1\n", src1);

	// 完全一致の場合
	ft_memcpy(src1, src1, 2);

	printf("%s : this is a src1 re\n", src1);





	return (0);
}

