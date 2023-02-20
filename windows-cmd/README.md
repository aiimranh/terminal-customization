# Command Prompt + Clink + Oh My Posh

## Final Look:
![cmd](./cmd.png)
#

## Required:
01. [Nerd Font](https://www.nerdfonts.com/)
#

## Oh My Posh
- Download and Install [Oh My Posh](https://ohmyposh.dev/)

    - Powershell Command to install 
    
        `winget install JanDeDobbeleer.OhMyPosh -s winget`

#
## Clink
- Download and Install [Clink](https://github.com/chrisant996/clink)
#

## Customization

- Create a Profile for `oh my posh` using `clink` on `cmd`

    - Navigate the file explorer

        `C:\Program Files (x86)\clink\`
    - Making New file 

        `oh-my-posh.lua`

    - Adding the line
        `load(io.popen('oh-my-posh init cmd --config C:/Users/AIIH/AppData/Local/Programs/oh-my-posh/themes/powerlevel10k_rainbow.omp.json'):read("*a"))()`
        
        note: replace `AIIH` using your user name.

    - Run the `clink.bat`
    - Run the command on `clink`
        
        `clink info`

- Close & Open Command Prompt.
#

## MY Themes
- Customize Profile for `oh my posh` using `clink` on `cmd`

    - Download the `.json` files

        `absolute.omp.json`

        `powerlevel10k_rainbow.omp.json`

    - Navigate the file explorer

        `C:/Users/AIIH/AppData/Local/Programs/oh-my-posh/themes/`
        
        note: replace `AIIH` using your user name.

    - Paste all the `.json` files.

- Close & Open Command Prompt.

#