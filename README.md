# Johnny @ thecode

## Windows 10 & 11

1. Install Terminal & PowerShell from Microsoft Store
1. Install patched Nerd Fonts, (install all Windows compatible .ttf files) & enabled in your terminal (for example, try the [Fira Code Nerd Font](https://www.nerdfonts.com/font-downloads))
1. Configure Windows terminal (set Terminal default, PowerShell, Colors Scheme 'Cobalt2', Fonts)
1. Install [Scoope](https://scoop.sh/) - Command-line installer
1. Install Neovim 
1. Make a user profile and set comman aliases
The first step in creating your own profile is to test if you already have a profile. Open PowerShell and type:  
`test-path $profile` 
If it returns False, then we need to create the profile first, type:  
`New-Item -Path $profile -Type File -Force`  
and then set nvim $PROFILE.CurrentUserCurrentHost  
`. $env:USERPROFILE\.config\powershell\user_profile.ps1` 
1. Install [Spaceship](https://github.com/spaceship-prompt/spaceship-prompt) as a prompt.
1. Install:
	* [Terminal Icons](https://github.com/devblackops/Terminal-Icons) - Folder and file icons 
	* [PSReadLine](https://docs.microsoft.com/en-us/powershell/module/psreadline/?view=powershell-7.2) - Cmdlets for customizing the editing environment, used for autocompletion 
	* [z](https://www.powershellgallery.com/packages/z/1.1.13) - Directory jumper 
	* [PSFzf](https://github.com/kelleyma49/PSFzf) - Fuzzy finder
