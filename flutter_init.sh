# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    flutter_init.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahmaymou <ahmaymou@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/29 18:58:43 by yel-hadd          #+#    #+#              #
#    Updated: 2022/11/30 13:11:17 by ahmaymou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

username= id -un
rm -rf "/goinfre/$username/flutter"
mkdir -p "/goinfre/$username/flutter"
curl "https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_3.3.9-stable.zip" -o "/goinfre/$username/flutter.zip"
unzip "/goinfre/$username/flutter.zip" -d "/goinfre/$username/"
alias flutter='/goinfre/$username/flutter/bin/flutter'
alias dart='/goinfre/$username/flutter/bin/dart'
rm -f "/goinfre/$username/flutter.zip"