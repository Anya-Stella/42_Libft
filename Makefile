# まけ

SRCS = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
		ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c \
		ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c \
		ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c \
		ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c \
		ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c \
		ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
# 		ft_strmapi.c ft_striteri.c ft_putchar_fd.c \
# 		ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c
# SRCS_BONUS = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c \
# 		ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c \
# 		ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

OBJS = $(SRCS:.c=.o)
OBJS_BONUS = $(SRCS_BONUS:.c=.o)

NAME = libft.a
CC = cc
RM = rm -f
CFLAGS = -Wall -Wextra -Werror

DFLAG := -Wall -Wextra -Werror -g3 -fsanitize=address

ifdef DEBUG_MODE
CFLAGS := $(DFLAG)
endif

all:$(NAME)

# implicit_rule
%.o:%.c
	$(CC) $(CFLAGS) -c $< -o $@
# make archve（箱に追加）
$(NAME):$(OBJS)
	ar rcs $(NAME) $(OBJS)
# add archve_bonus
#bonus:$(OBJS_BONUS)
#	ar rcs $(NAME) $(OBJS_BONUS)
#	touch bonus
# default_target 

.PHONY:debug
debug:
	make DEBUG_MODE=1
	$(CC) $(DFLAG) main.c $(OBJS) -o libft.out

clean:
	$(RM) $(OBJS) $(OBJS_BONUS) bonus
fclean:clean
	$(RM) $(NAME)
re:fclean all

.PHONY: all clean fclean re




