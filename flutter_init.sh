# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    flutter_init.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yel-hadd <yel-hadd@mail.com>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/29 18:58:43 by yel-hadd          #+#    #+#              #
#    Updated: 2022/12/30 19:49:23 by yel-hadd         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Starter Variables
FLUTTER_DL_LINK="https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_3.3.9-stable.zip"
USER=$(whoami)

# Download & Extract Dart & Flutter SDKs
if [ ! -d "/goinfre/$USER/flutter" ]; then
  mkdir -p "/goinfre/$USER/flutter"
  clear
  echo "Please wait while Dart & Flutter SDKs are being downloaded"
  echo "Please do not close terminal !\n"
  curl "$FLUTTER_DL_LINK" -o "/goinfre/$USER/flutter.zip"
  echo ""
  echo "Please wait while Dart & Flutter SDKs are being installed"
  echo "Please do not close terminal !\n"
  unzip -q "/goinfre/$USER/flutter.zip" -d "/goinfre/$USER/"
  rm -f "/goinfre/$USER/flutter.zip"
  echo "Flutter & Dart SDKs Have Been Installed Successfuly !"
fi

# Create Alias Flutter
if grep -Fq "flutter='/goinfre/$USER/flutter/bin/flutter'" ~/.zshrc
then
  :
else
	echo "alias flutter='/goinfre/$USER/flutter/bin/flutter'" >> ~/.zshrc
  echo "Created Alias For Flutter"
fi

# Create Alias for Dart
if grep -Fq "dart='/goinfre/$USER/flutter/bin/dart'" ~/.zshrc
then
  :
else
	echo "alias dart='/goinfre/$USER/flutter/bin/dart'" >> ~/.zshrc
  echo "Created Alias For Dart"
fi