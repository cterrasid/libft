# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cterrasi <cterrasi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/23 19:45:55 by cterrasi          #+#    #+#              #
#    Updated: 2022/04/07 15:35:04 by cterrasi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#	VARIABLES
SRCS		=	ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c \
				ft_isascii.c ft_isdigit.c ft_toupper.c ft_tolower.c ft_isprint.c \
				ft_memcmp.c ft_memchr.c ft_memcpy.c ft_memmove.c ft_memset.c \
				ft_strchr.c ft_strdup.c ft_strnstr.c ft_strrchr.c ft_strncmp.c \
				ft_strlen.c ft_strlcpy.c ft_strlcat.c ft_substr.c ft_strjoin.c \
				ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c \
				ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

OBJS		=	$(SRCS:.c=.o)

BONUS_SRCS	=	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstadd_back.c \
				ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c \
				ft_lstlast.c

BONUS_OBJS	=	$(BONUS_SRCS:.c=.o)

B			=	.

CC			=	gcc

CC_FLAGS	=	-Wall -Werror -Wextra

RM_RF		=	rm -rf

NAME		=	libft.a

#	RULES
all:		$(NAME)

bonus:		$(B)

$(NAME):	$(OBJS)
			ar crs $(NAME) $(OBJS)

$(B):		$(OBJS) $(BONUS_OBJS)
			ar crs $(NAME) $(OBJS) $(BONUS_OBJS)

clean:
			$(RM_RF) $(OBJS) $(BONUS_OBJS)

fclean:		clean
			$(RM_RF) $(NAME)

re:			fclean all

.PHONY:		all clean fclean re
