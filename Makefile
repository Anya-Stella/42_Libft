# まけ

SRCS =
SRCS += ft_isalpha.c
SRCS += ft_isdigit.c
SRCS += ft_isalnum.c
SRCS += ft_isascii.c
SRCS += ft_isprint.c
SRCS += ft_strlen.c
SRCS += ft_memset.c
SRCS += ft_bzero.c
SRCS += ft_memcpy.c
SRCS += ft_memmove.c
SRCS += ft_strlcpy.c
SRCS += ft_strlcat.c
SRCS += ft_toupper.c
SRCS += ft_tolower.c
SRCS += ft_strchr.c
SRCS += ft_strrchr.c
SRCS += ft_strncmp.c
SRCS += ft_memchr.c
SRCS += ft_memcmp.c
SRCS += ft_strnstr.c
SRCS += ft_atoi.c
SRCS += ft_calloc.c
SRCS += ft_strdup.c
SRCS += ft_substr.c
SRCS += ft_strjoin.c
SRCS += ft_strtrim.c
SRCS += ft_split.c
SRCS += ft_itoa.c
SRCS += ft_strmapi.c
SRCS += ft_striteri.c
SRCS += ft_putchar_fd.c
SRCS += ft_putstr_fd.c
SRCS += ft_putendl_fd.c
SRCS += ft_putnbr_fd.c

SRCS_BONUS =
SRCS_BONUS += ft_lstnew.c
SRCS_BONUS += ft_lstadd_front.c
SRCS_BONUS += ft_lstsize.c
SRCS_BONUS += ft_lstlast.c
SRCS_BONUS += ft_lstadd_back.c
SRCS_BONUS += ft_lstdelone.c
SRCS_BONUS += ft_lstclear.c
SRCS_BONUS += ft_lstiter.c
SRCS_BONUS += ft_lstmap.c

OBJS := $(SRCS:%.c=%.o)
OBJS_BONUS := $(SRCS_BONUS:%.c=%.o)

# Name of the library
NAME := libft.a
CC := cc
CFLAGS := -Wall -Wextra -Werror
DFLAGS := -g3 -fsanitize=address

ifdef DEBUG_MODE
	CFLAGS := DFLAGS
endif

# ifdef ADD_BONUS
	OBJS += $(OBJS_BONUS)
# endif

# Default targets
.PHONY:all
all: $(NAME)

# target
%.o:%.c	
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME):$(OBJS)
	ar rcs $(NAME) $(OBJS)

.PHONY:bonus
bonus:
	@make ADD_BONUS=1

.PHONY:debug
debug:
	@make DEBUG_MODE=1
	$(CC) $(DFLAGS) main.c $(OBJS) -o libft.out

.PHONY:clean
clean:
	rm -f $(OBJS) $(OBJS_BONUS)

.PHONY:fclean
fclean:clean
	rm -f $(NAME)

.PHONY:re
re:fclean all


# ------------------------------------

# # Compiler and compiling flags
# CC = cc
# CFLAGS = -Wall -Wextra -Werror

# # Source and object files
# S_ALL =\
# 	ft_isalpha.c\
# 	ft_isdigit.c\
# 	ft_isalnum.c\
# 	ft_isascii.c\
# 	ft_isprint.c\
# 	ft_strlen.c\
# 	ft_memset.c\
# 	ft_bzero.c\
# 	ft_memcpy.c\
# 	ft_memmove.c\
# 	ft_strlcpy.c\
# 	ft_strlcat.c\
# 	ft_toupper.c\
# 	ft_tolower.c\
# 	ft_strchr.c\
# 	ft_strrchr.c\
# 	ft_strncmp.c\
# 	ft_memchr.c\
# 	ft_memcmp.c\
# 	ft_strnstr.c\
# 	ft_atoi.c\
# 	ft_calloc.c\
# 	ft_strdup.c\
# 	ft_substr.c\
# 	ft_strjoin.c\
# 	ft_strtrim.c\
# 	ft_split.c\
# 	ft_itoa.c\
# 	ft_strmapi.c\
# 	ft_striteri.c\
# 	ft_putchar_fd.c\
# 	ft_putstr_fd.c\
# 	ft_putendl_fd.c\
# 	ft_putnbr_fd.c\

# S_BONUS =\
# 	ft_lstnew.c\
# 	ft_lstadd_front.c\
# 	ft_lstsize.c\
# 	ft_lstlast.c\
# 	ft_lstadd_back.c\
# 	ft_lstdelone.c\
# 	ft_lstclear.c\
# 	ft_lstiter.c\
# 	ft_lstmap.c\

# O_ALL = $(S_ALL:%.c=%.o)
# O_BONUS = $(S_BONUS:%.c=%.o)

# ifdef ADD_BONUS
# O_ALL += $(O_BONUS)
# endif

# # Name of the library
# NAME = libft.a

# # Default target
# all: $(NAME)

# # Rule for creating the library
# $(NAME): $(O_ALL)
# 	ar rcs $(NAME) $(O_ALL)

# # Rule for bonus target
# bonus:
# 	@make ADD_BONUS=1
# # Rule for creating extra

# # Rule for compiling source files
# %.o: %.c
# 	$(CC) $(CFLAGS) -I. -c $< -o $@

# # Rule for cleaning object files
# clean:
# 	rm -f $(O_ALL) $(O_BONUS)

# # Rule for full clean
# fclean: clean
# 	rm -f $(NAME)

# # Rule for re-making
# re: fclean all

# # Phony targets
# .PHONY: all bonus clean fclean re

