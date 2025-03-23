#!/bin/bash

# Verificar si el sistema es Ubuntu/Debian o Arch
OS=$(uname -s)

# Función para instalar Alacritty en Ubuntu/Debian
install_alacritty_ubuntu() {
  echo "Instalando Alacritty en Ubuntu/Debian..."
  sudo apt update
  sudo apt install -y alacritty
}

# Función para instalar Alacritty en Arch Linux
install_alacritty_arch() {
  echo "Instalando Alacritty en Arch Linux..."
  sudo pacman -S alacritty --noconfirm
}

# Instalar Alacritty si no está instalado
check_and_install_alacritty() {
  if ! command -v alacritty &> /dev/null; then
    echo "Alacritty no está instalado."

    # Verificar el sistema operativo
    if [[ "$OS" == "Linux" ]]; then
      DISTRO=$(cat /etc/os-release | grep ^ID= | cut -d= -f2)

      if [[ "$DISTRO" == "ubuntu" || "$DISTRO" == "debian" ]]; then
        install_alacritty_ubuntu
      elif [[ "$DISTRO" == "arch" ]]; then
        install_alacritty_arch
      else
        echo "No se tiene soporte para la instalación automática de Alacritty en esta distribución."
        echo "Por favor, instala Alacritty manualmente."
      fi
    else
      echo "Este script solo soporta Linux, por favor instala Alacritty manualmente."
    fi
  else
    echo "Alacritty ya está instalado."
  fi
}

# Instalar Powerlevel10k en Zsh
install_powerlevel10k() {
  echo "Instalando Powerlevel10k..."
  # Si Zsh está instalado, instalar Powerlevel10k con git
  if command -v zsh &> /dev/null; then
    # Verificar si Powerlevel10k está instalado
    if [ ! -d "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
      # Clonar el repositorio de Powerlevel10k
      git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
    fi
  else
    echo "Zsh no está instalado, por favor instálalo primero."
  fi
}

# Instalación de configuraciones
echo "Instalando configuraciones..."

# Crear directorios si no existen
mkdir -p ~/.config/alacritty ~/.config/nvim

# Copiar configuraciones
cp -r ./alacritty/alacritty.toml ~/.config/alacritty/
cp -r ./nvim/* ~/.config/nvim/
cp .tmux.conf ~/
cp .zshrc ~/

# Instalar Alacritty si no está instalado
check_and_install_alacritty

# Instalar Powerlevel10k
install_powerlevel10k

echo "Configuraciones instaladas correctamente."

