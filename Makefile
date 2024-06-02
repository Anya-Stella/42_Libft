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

OBJS = $(SRCS: .c=.o)
OBJS_BONUS = $(SRCS_BONUS: .c=.o)

# Name of the library
NAME = libft.a
CC = cc
CFLAGS = -Wall -Wextra -Werror
DFLAGS = -g3 -fsanitize=address

ifdef DEBUG_MODE

endif

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
	make DEBUG_MODE=1
	$(CC) $(DFLAGS) main.c $(OBJS) -o libft.out

.PHONY:clean
clean:
	$(RM) $(OBJS) $(OBJS_BONUS) bonus

.PHONY:fclean
fclean:clean
	$(RM) $(NAME)

.PHONY:re
re:fclean all








#---------------------------------------------------------------------------------

SRCS = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
		ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c \
		ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c \
		ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c \
		ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c \
		ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c \
		ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
		ft_strmapi.c ft_striteri.c ft_putchar_fd.c \
		ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c
SRCS_BONUS = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c \
		# ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c \
		# ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

# OBJS = $(SRCS:.c=.o)
# OBJS_BONUS = $(SRCS_BONUS:.c=.o)

# NAME = libft.a
# CC = cc
# RM = rm -f
# CFLAGS = -Wall -Wextra -Werror

# DFLAG := -Wall -Wextra -Werror -g3 -fsanitize=address

# ifdef DEBUG_MODE
# CFLAGS := $(DFLAG)
# endif

# all:$(NAME)

# implicit_rule
%.o:%.c
	$(CC) $(CFLAGS) -c $< -o $@
# make archve（箱に追加）
$(NAME):$(OBJS)
	ar rcs $(NAME) $(OBJS)
# add archve_bonus
bonus:$(OBJS_BONUS)
	@make ADD_BONUS=1

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


# ------------------------------------

# Compiler and compiling flags
CC = cc
CFLAGS = -Wall -Wextra -Werror

# Source and object files
S_ALL =\
	ft_isalpha.c\
	ft_isdigit.c\
	ft_isalnum.c\
	ft_isascii.c\
	ft_isprint.c\
	ft_strlen.c\
	ft_memset.c\
	ft_bzero.c\
	ft_memcpy.c\
	ft_memmove.c\
	ft_strlcpy.c\
	ft_strlcat.c\
	ft_toupper.c\
	ft_tolower.c\
	ft_strchr.c\
	ft_strrchr.c\
	ft_strncmp.c\
	ft_memchr.c\
	ft_memcmp.c\
	ft_strnstr.c\
	ft_atoi.c\
	ft_calloc.c\
	ft_strdup.c\
	ft_substr.c\
	ft_strjoin.c\
	ft_strtrim.c\
	ft_split.c\
	ft_itoa.c\
	ft_strmapi.c\
	ft_striteri.c\
	ft_putchar_fd.c\
	ft_putstr_fd.c\
	ft_putendl_fd.c\
	ft_putnbr_fd.c\

S_BONUS =\
	ft_lstnew.c\
	ft_lstadd_front.c\
	ft_lstsize.c\
	ft_lstlast.c\
	ft_lstadd_back.c\
	ft_lstdelone.c\
	ft_lstclear.c\
	ft_lstiter.c\
	ft_lstmap.c\

O_ALL = $(S_ALL:%.c=%.o)
O_BONUS = $(S_BONUS:%.c=%.o)

ifdef ADD_BONUS
O_ALL += $(O_BONUS)
endif

# Name of the library
NAME = libft.a

# Default target
all: $(NAME)

# Rule for creating the library
$(NAME): $(O_ALL)
	ar rcs $(NAME) $(O_ALL)

# Rule for bonus target
bonus:
	@make ADD_BONUS=1
# Rule for creating extra

# Rule for compiling source files
%.o: %.c
	$(CC) $(CFLAGS) -I. -c $< -o $@

# Rule for cleaning object files
clean:
	rm -f $(O_ALL) $(O_BONUS)

# Rule for full clean
fclean: clean
	rm -f $(NAME)

# Rule for re-making
re: fclean all

# Phony targets
.PHONY: all bonus clean fclean re

