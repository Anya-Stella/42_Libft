/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncmp.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tishihar <wingstonetone9.8@gmail.com>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/19 17:19:13 by tishihar          #+#    #+#             */
/*   Updated: 2024/05/19 17:48:57 by tishihar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int ft_strncmp(const char *s1, const char *s2, size_t n)
{
    unsigned char   *c1;
    unsigned char   *c2;

    c1 = (unsigned char *)s1;
    c2 = (unsigned char *)s2;

    while (n-- && (*c1 || *c2))
    {
        if (*c1 != *c2)
            return (*c1 - *c2);
        c1++;
        c2++;
    }
    return (0);
}