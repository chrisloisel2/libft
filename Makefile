# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lchristo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/11 02:24:34 by lchristo          #+#    #+#              #
#    Updated: 2019/11/02 13:07:58 by lchristo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC    = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c\
		 ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_memccpy.c\
		 ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memccpy.c ft_memmove.c ft_memset.c\
		 ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_split.c\
		 ft_strchr.c ft_strdup.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c\
		 ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strnstr.c ft_strrchr.c\
		 ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c

BONUS = ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c ft_lstclear_bonus.c ft_lstdelone_bonus.c\
		ft_lstiter_bonus.c ft_lstlast_bonus.c ft_lstmap_bonus.c ft_lstnew_bonus.c ft_lstsize_bonus.c

OBJ = $(SRC:.c=.o)

OBJBONUS = $(BONUS:.c=.o)

FLAG = -Wall -Wextra -Werror

OPTION = -c

all: $(NAME)

$(NAME):
	gcc $(FLAG) $(OPTION) $(SRC)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

bonus :
	gcc $(FLAG) $(OPTION) $(SRC) $(BONUS)
	ar rc $(NAME) $(OBJ) $(OBJBONUS)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OBJ) $(OBJBONUS)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
