/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tishihar <tishihar@student.42tokyo.jp>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/20 23:23:04 by tishihar          #+#    #+#             */
/*   Updated: 2024/05/23 18:38:25 by tishihar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_isspace(int c)
{
	if (c == '\t' || c == '\n' || c == '\v'
		|| c == '\f' || c == '\r' || c == ' ')
		return (1);
	return (0);
}

int	ft_atoi(const char *str)
{
	long	result;
	long	border;
	int		lim;
	int		sign;
	int		digit;

	while (ft_isspace(*str))
		str++;
	sign = -2 * (*str == '-') + 1;
	str += (*str == '-' || *str == '+');
	result = 0;
	border = LONG_MAX / 10;
	lim = LONG_MAX % 10 + (1 - sign) / 2;
	while (ft_isdigit(*str))
	{
		digit = *str - '0';
		if ((result > border) || (result == border && digit > lim))
			return (-(sign + 1) / 2);
		result = (10 * result) + digit;
		str++;
	}
	return ((int)(sign * result));
}

/*
#include <stdlib.h>
int main()
{
	char *int_max = "2147483647";
	char *int_max_1 = "2147483648";
	char *int_max_2 = "2147483649";
	char *int_max_3 = "2147483650";

	printf("%d: atoi\n", atoi(int_max));
	printf("%d: ft_atoi\n", ft_atoi(int_max));
	printf("%d: atoi\n", atoi(int_max_1));
	printf("%d: ft_atoi\n", ft_atoi(int_max_1));
	printf("%d: atoi\n", atoi(int_max_2));
	printf("%d: ft_atoi\n", ft_atoi(int_max_2));
	printf("%d: atoi\n", atoi(int_max_3));
	printf("%d: ft_atoi\n", ft_atoi(int_max_3));
	printf("Size of int: %zu bytes\n", sizeof(int));
	printf("Size of long: %zu bytes\n", sizeof(long));

	char *LONG_min = "-9223372036854775808";
	char *LONG_min_1 = "-9223372036854775809";
	char *LONG_max = "9223372036854775807";
	char *LONG_max_1 = "9223372036854775808";
	printf("%d: atoi\n", atoi(LONG_min));
	printf("%d: ft_atoi\n", ft_atoi(LONG_min));
	printf("%d: atoi\n", atoi(LONG_min_1));
	printf("%d: ft_atoi\n", ft_atoi(LONG_min_1));
	printf("%d: atoi\n", atoi(LONG_max));
	printf("%d: ft_atoi\n", ft_atoi(LONG_max));
	printf("%d: atoi\n", atoi(LONG_max_1));
	printf("%d: ft_atoi\n", ft_atoi(LONG_max_1));

}
//*/