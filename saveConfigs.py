import os
from shutil import copyfile

# where you want to save all config files
pathConfigs = "/home/andres/Documents/repos/personal/configFiles/"


#--------------- list of files, path and name--------------
#BASHRC
pathBashrc = "/home/andres/"
bashrc = ".bashrc"

#ZSHRC
pathZsh = "/home/andres/"
zsh = ".zshrc"

#p10k
pathp10kzsh = '/home/andres/'
p10kzsh = '.p10k.zsh'

#NEOVIM
pathNvim = "/home/andres/.config/nvim/"
nvim = "init.vim"

pathFunctions = "/home/andres/.config/nvim/"
nvimFunctions = "functions.vim"

pathMaps = "/home/andres/.config/nvim/"
nvimMaps = "maps.vim"

pathPlugins = "/home/andres/.config/nvim/"
nvimPlugins = "plugins.vim"

#---------------- automatic save ----------------

def saveConfigs(pathFile, file):

    if os.path.exists(f"{pathFile}{file}"):
       copyfile(f"{pathFile}{file}", f"{pathConfigs}{file}") 
       print(f"file {file} update successfully.")
    else:
       print(f"File {file} doesn't exist.")

# 
saveConfigs(pathBashrc, bashrc)
saveConfigs(pathZsh, zsh)
saveConfigs(pathp10kzsh, p10kzsh)
saveConfigs(pathNvim, nvim)
saveConfigs(pathFunctions, nvimFunctions)
saveConfigs(pathMaps, nvimMaps)
saveConfigs(pathPlugins, nvimPlugins)
