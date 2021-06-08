import os
from shutil import copyfile

# where you want to save all config files
pathConfigs = "/home/andres/Documents/repos/personal/configFiles/"


#--------------- list of files, path and name--------------
#BASHRC
pathBashrc = "/home/andres/"
bashrc = ".bashrc"

#NEOVIM
pathNvim = "/home/andres/.config/nvim/"
nvim = "init.vim"

pathFunctions = "/home/andres/.config/nvim/"
nvimFunctions = "functions.vim"

pathMaps = "/home/andres/.config/nvim/"
nvimMaps = "maps.vim"

pathPlugins = "/home/andres/.config/nvim/"
nvimPlugins = "plugins.vim"

#ZSHRC
pathZsh = "/home/andres/"
zsh = ".zshrc"

#---------------- automatic save ----------------

def saveConfigs(pathFile, file):

    if os.path.exists(f"{pathFile}{file}"):
       copyfile(f"{pathFile}{file}", f"{pathConfigs}{file}") 
       print(f"file {file} update successfully.")
    else:
       print(f"File {file} doesn't exist.")

# 
saveConfigs(pathBashrc, bashrc)
saveConfigs(pathNvim, nvim)
saveConfigs(pathFunctions, nvimFunctions)
saveConfigs(pathMaps, nvimMaps)
saveConfigs(pathPlugins, nvimPlugins)
saveConfigs(pathZsh, zsh)
