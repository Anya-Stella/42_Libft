/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tishihar <wingstonetone9.8@gmail.com>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/01 16:28:14 by tishihar          #+#    #+#             */
/*   Updated: 2024/06/01 17:39:02 by tishihar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list *ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))
{
	t_list	*output;
	t_list	*node;
	


	if (!lst || !f)
		return (NULL);
	output = NULL;

	while (lst)
	{
		node = ft_lstnew(lst->content);
		if (!node)
		{
			//  消去
			ft_lstclear(, del);
		}
		ft_lstadd_back(&output, node);
		lst = lst->next;
	}	

	return (output);
}