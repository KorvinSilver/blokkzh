# blokkzh

A theme for robbyrussell's [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) based on its built in [gnzh](https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/gnzh.zsh-theme) theme.

## Installation

Make sure you have a font with Unicode support installed, eg. the Noto font family.

### [Antigen](https://github.com/zsh-users/antigen)

Add `antigen bundle KorvinSilver/blokkzh` to your `.zshrc` with your other bundle commands.

Antigen will handle cloning the plugin for you automatically the next time you start zsh. You can also add the plugin to a running zsh with `antigen bundle unixorn/tumult.plugin.zsh` for testing before adding it to your `.zshrc`.

### [Oh-My-Zsh](http://ohmyz.sh/)

To install, follow [these instructions](https://github.com/robbyrussell/oh-my-zsh/wiki/Customization#overriding-and-adding-themes)

You can also use the [blokkzh-downloader](https://github.com/KorvinSilver/blokkzh/blob/master/blokkzh-downloader.zsh) script included in this repo.

Alternatively, you can execute this command:
`curl -O https://raw.githubusercontent.com/KorvinSilver/blokkzh/master/blokkzh-downloader.zsh && zsh blokkzh-downloader.zsh $ZSH_CUSTOM && rm blokkzh-downloader.zsh`

### [Zgen](https://github.com/tarjoilija/zgen)

Add `zgen load KorvinSilver/blokkzh` to your .zshrc file in the same function you're doing your other `zgen load` calls in. Zgen will handle automatically cloning the plugin for you the next time you do a `zgen save`.

## Screenshots

### xterm

<img src="preview.png">

### tty

<img src="preview-tty.png">
