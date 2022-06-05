# **My Fish Shell setup**
This is my Fish Shell setup, and I use it for create more speed and productivity such as create shortcut for many frequently used command, jump to many location by use shortcut path, show repository of git in line and also make it beutiful.

### **Image Preview**
- Example command
![fish](https://github.com/chinhchin/Fish-Shell-setup/blob/0.0.b.0/readme-assets/fish.png?raw=true)

### **Go to**
- [Version record](./version-record.json)

### **Credits**
- Inspiration, list of modules and solution from [craftzdog/dotfiles-public](https://github.com/craftzdog/dotfiles-public).

### **OS support**
- Windows 10, 11 (WSL)
- macOS
- linux

### **Packages requirement**
- [Brew](https://github.com/chinhchin/Brew-setup.git)

### **Contents**
#### 1. [Prepare to use fish shell](./readme.md#1-prepare-to-use-fish-shell)
1. [Install WSL](./readme.md#11-install-wsl-for-windows-only)
2. [Install Nerd Font](./readme.md#12-install-nerd-font)
3. [Set your font in terminal to Nerd Font](./readme.md#13-set-your-font-in-terminal-to-nerd-font)

#### 2. [Install Fish and useful package](./readme.md#2-install-fish-and-useful-package)
1. [Install Fish](./readme.md#21-install-fish)
2. [Install useful package](./readme.md#22-install-useful-package)

#### 3. [config.fish](./readme.md#3-configfish)

#### 4. [Features](./readme.md#4-features)
1. [Tab to get command, directory or option suggestion to your command line](./readme.md#41-tab-to-get-command-directory-or-option-suggestion-to-your-command-line)
2. [Right arrow to get command suggestion to your command line](./readme.md#42-right-arrow-to-get-command-suggestion-to-your-command-line)
3. [Z command to jump around](./readme.md#43-z-command-to-jump-around)
4. [Search files](./readme.md#44-search-files)
5. [Search command from history](./readme.md#45-search-command-from-history)
6. [Useful shortcut command](./readme.md#46-useful-shortcut-command)

---

## **1. Prepare to use fish shell**
### **1.1 Install WSL** (For Windows only)
If you want to use Fish Shell on Windows, you have to install [WSL](https://github.com/chinhchin/WSL-setup.git) (Windows Subsystem for Linux) for running Linux on Windows.

> **Note**
>
> In every command next from this, type every command into WSL.

### **1.2 Install Nerd Font**
First, I have to install Nerd Fonts so that I can display the icons and markers used in programming nicely.

So I use [Caskaydia Cove Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip).

And you can see more fonts to get the one that is right for you [here](https://www.nerdfonts.com/).

### **1.3 Set your font in terminal to Nerd Font**

## **2. Install Fish and useful package**
### **2.1 Install Fish**
> **Important**
>
> You have to install brew before use this command, see install solution in [packages requirement](./readme.md#packages-requirement)

```
brew install fish
fish
```

> **Note**
>
> All next command you have to type in Fish Shell so make it sure that you're in fish shell. If you are not, type ```fish```.
> In fish shell it will look like this.
>
> ![Fish Shell face](https://github.com/chinhchin/Fish-Shell-setup/blob/0.0.b.0//readme-assets/Install%20Fish%20and%20useful%20package/Fish%20Shell%20face.png?raw=true)

### **2.2 Install useful package**

1. Install [Fisher](https://github.com/jorgebucaran/fisher) - Fish plugin manager


```
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
```
2. Install and setup [Tide](https://github.com/IlanCosman/tide) - Beutiful shell theme.
```
fisher install IlanCosman/tide@v5
```

Then, customize tide to your style.

This's mine.
![my tide](https://github.com/chinhchin/Fish-Shell-setup/blob/0.0.b.0//readme-assets/Install%20Fish%20and%20useful%20package/my%20tide.png?raw=true)

If you want to customize tide again type this in fish shell
```
tide configure
```

3. Install [Z](https://github.com/jethrokuan/z) - Directory jumper
```
fisher install jethrokuan/z
```

4. Install [Exa](https://github.com/ogham/exa) - Colorful and icons when list directory.
```
brew install exa
```

5. Install [Ghq](https://github.com/x-motemen/ghq) - Local Git repository organizer
```
brew install ghq
ghq get chinhchin/Fish-Shell-setup
```

6. Install [Peco](https://github.com/peco/peco) - Interactive filtering
```
brew install peco
```

## **3. config.fish**
```
vim ~/.config/fish/config.fish
```

Copy data from this [config.fish](./fish/config.fish) to terminal.

## **4. Features**
### **4.1 Tab to get command, directory or option suggestion to your command line**
1. Type some command.
2. Press "*Tab*" then press "*(Down)*".
3. Use "*(Arrow Key)*" to control position.
4. Press "*Enter*/*Return*" to select directory.

![Image](https://github.com/chinhchin/Fish-Shell-setup/blob/0.0.b.0//readme-assets/Features/1.png?raw=true)
![Image](https://github.com/chinhchin/Fish-Shell-setup/blob/0.0.b.0//readme-assets/Features/2.png?raw=true)

### **4.2 Right arrow to get command suggestion to your command line**
1. Type some command.
2. If it show suggestion of command at right of cursor, press "*Right*" if you want to choose.

![Image](https://github.com/chinhchin/Fish-Shell-setup/blob/0.0.b.0//readme-assets/Features/3.png?raw=true)

### **4.3 Z command to jump around**
Type ```z ``` then followed by directory name or some part of directory name.

You can also jump over directory.

![Image](https://github.com/chinhchin/Fish-Shell-setup/blob/0.0.b.0//readme-assets/Features/4.png?raw=true)

### **4.4 Search files**
You can search file by type "*Ctrl-f*".

![Search files](https://github.com/chinhchin/Fish-Shell-setup/blob/0.0.b.0//readme-assets/Features/5.png?raw=true)

> **Note**
>
> You can add more directory for search in file "*~/.config/fish/config.fish*" after line 59.

### **4.5 Search command from history**
You can search command from history by type "*Ctrl-r*".

![Search command from history](https://github.com/chinhchin/Fish-Shell-setup/blob/0.0.b.0//readme-assets/Features/6.png?raw=true)

### **4.6 Useful shortcut command**
- **ll** - get list of all file in current directory
- **llt** - get list of all file in current directory with tree

- **g** - call git

- **cls** and **clr** - clear screen

- **md** - create folder (alias from mkdir)

> **Note**
>
> You can edit or add more shortcut in file "*~/.config/fish/config.fish*" by type ```alias <shortcut command> <full command>```
