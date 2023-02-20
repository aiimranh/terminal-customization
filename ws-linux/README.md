# WS-Linux + ZSH Customization

## Required on WSL:
01. Install python `sudo apt install python3`

02. Install Python3-pip `sudo apt install python3-pip`

03. Install wget `sudo apt install wget`

03. Install curl `sudo apt install curl`

## Method:
01. Install Git via wsl terminal
* `sudo apt install git`

02. Install Nerd Font on `windows`
	01. Open the Nerd Font website `https://www.nerdfonts.com/`
	02. Download Meslo Nerd Font
	03. Extract the zip copy the all .ttf & .otf file to `C:\Windows\Fonts`

03. Configure the `Meslo Font` on WSL
	
04. Install ZSH `sudo apt install zsh` & type zsh & enter

05. oh-my-zsh installing process :
	01. Open link `https://ohmyz.sh/`
	02. Copy link under the (Install oh-my-zsh via curl)
	03. Run it on WSL Bash & Done.

06. powerlevel10k themes installing process :
	01. Open the link `https://github.com/romkatv/powerlevel10k`
	02. Copy the git file from (Installation/Oh My Zsh)
	03. Run it WSL Bash
	04. Set `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc` which is located in `C:\Users\AIIH` .
	05. Close the WSL Bash using exit command & Open again.
	06. Run zsh command
	07. if do not see any prompt, run ( `p10k configure` ) & Configure the themes.
    
07. Extra process : ( if any wrong thing happen)
	01. Download the config files.
	02. Put those to the `~`
	03. Close the WSL Bash & Run again.

#