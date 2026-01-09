# WARP.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Repository Purpose

This is a personal configuration management repository that stores and syncs shell (zsh, bash) and Neovim configuration files between the local system and version control.

## Common Commands

### Update Configuration Files
```bash
python3 saveConfigs.py
```
Copies the latest configuration files from their system locations to this repository. The script backs up:
- Shell configs: `.bashrc`, `.zshrc`, `.p10k.zsh`
- Neovim configs: `init.vim`, `plugins.vim`, `maps.vim`, `functions.vim`

## Architecture

### Configuration Sync System
The repository uses `saveConfigs.py` as a one-way sync tool that copies configuration files from their active locations to this repository for version control. File paths are hardcoded to the user's home directory structure.

**Source locations:**
- Shell configs: `~/`
- Neovim configs: `~/.config/nvim/`

**Target location:** This repository at `/home/andres/Documents/repos/personal/configFiles/`

### Shell Setup
The shell configuration follows this dependency chain:
1. **zsh** (base shell)
2. **oh-my-zsh** (framework)
3. **powerlevel10k** (theme via `~/.p10k.zsh`)

The `.zshrc` file contains:
- Personal project aliases (vulcanos, dios repos)
- Conda environment management
- nvm (Node Version Manager) initialization
- Custom PATH modifications

### Neovim Setup
Neovim configuration is modular with four files:
- `init.vim` - Main config, sources other files
- `plugins.vim` - vim-plug plugin definitions
- `maps.vim` - Keybindings (leader: space)
- `functions.vim` - Custom VimScript functions

Uses `coc.nvim` for autocompletion, ALE for linting/fixing, and FZF for file searching. Theme: `hybrid_material`.

## Important Notes

- All file paths in `saveConfigs.py` are absolute and user-specific (hardcoded to `/home/andres/`)
- When modifying `saveConfigs.py`, ensure paths match the actual system locations
- The sync is one-directional: system → repository (does not deploy configs back to system)
- After running `p10k configure`, the `.p10k.zsh` needs to be re-synced to this repo
