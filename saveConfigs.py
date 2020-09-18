import os
from shutil import copyfile

pathConfigs = "/home/andres/configFiles/"

#BASHRC
pathBashrc = "/home/andres/"
bashrc = ".bashrc"

#VIMRC
pathVim = "/home/andres/"
vim = ".vimrc"

#NEOVIM
pathNvim = "/home/andres/.config/nvim/"
nvim = "init.vim"

#REDSHIFT
pathRedshift = "/home/andres/.config/"
redshift = "redshift.conf"

def saveConfigs(pathFile, file):


    if os.path.exists(f"{pathFile}{file}"):
       copyfile(f"{pathFile}{file}", f"{pathConfigs}{file}") 
       print(f"file {file} update successfully")
    else:
       print(f"El archivo {file} NO existe")
   
saveConfigs(pathBashrc, bashrc)
saveConfigs(pathVim, vim)
saveConfigs(pathNvim, nvim)
saveConfigs(pathRedshift, redshift)
