/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tishihar <tishihar@student.42tokyo.jp>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/19 08:00:51 by tishihar          #+#    #+#             */
/*   Updated: 2024/05/19 08:21:14 by tishihar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strrchr(const char *s, int c)
{
	char find;
	char *temp;

	find = (char)c;
	temp = (NULL);
	while (*s)
	{
		if(*s == find)
			temp = (char *)s;
		s++;
	}
	if (find == '\0')
		return ((char *)s);
	return (NULL);


}