/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_bzero.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tishihar <tishihar@student.42tokyo.jp>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/18 05:24:06 by tishihar          #+#    #+#             */
/*   Updated: 2024/04/18 05:31:28 by tishihar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <cstddef>
#include"libfit.h"

void ft_bzero(void *s, size_t n)
{
	ft_memset(s, 0, n);
}