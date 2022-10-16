# Use Visual Studio Code as the tig editor

Bash script to set Visual Studio Code as default editor for `tig`. It works on arbitrary terminal, including vscode's integrated terminal.

If you use `tig` in a remote ssh session, I would recommend using it with this [code-connect](https://github.com/chvolkmann/code-connect), which can help you opening files in locally running vscode instance from arbitrary terminal connections.

## Requirement

- [tig](https://github.com/jonas/tig) >= 2.5.4

### Note

You may need to build `tig` from source because the required version is relatively new. Please follow the [installation instruction](https://github.com/jonas/tig/blob/master/INSTALL.adoc#installation-instructions) on how to build and install `tig`.

## Preface

<https://user-images.githubusercontent.com/8423728/196050850-d725c413-1a28-4f8d-b818-dd3aaa85261d.mp4>

<https://user-images.githubusercontent.com/8423728/196050854-795aeec6-bed6-41e7-9e3d-fbd1d5668199.mp4>

## Installation

### Manual

1. Download the [vscode-for-tig](vscode-for-tig) and put it into your `$PATH`.
2. Edit your `~/.bashrc` or `~/.zshrc` and add `export TIG_EDITOR=vscode-for-tig`

### Zsh Plugin

#### oh-my-zsh

If you're using [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh):

1. Clones the repository into `$ZSH_CUSTOM/plugins` (by default `~/.oh-my-zsh/custom/plugins`)

    ```sh
    git clone https://github.com/qq88976321/vscode-for-tig $ZSH_CUSTOM/plugins/vscode-for-tig
    ```

2. Add `vscode-for-tig` to the plugins array in your `.zshrc` file

    ```sh
    plugins=(... vscode-for-tig)
    ```

## Reference

[tigrc document](https://jonas.github.io/tig/doc/tigrc.5.html)

```txt
core.editor
    The editor command. Can be overridden by setting TIG_EDITOR or GIT_EDITOR.

editor-line-number (bool)
    Whether to pass the selected line number to the editor command. The line number is passed as +<line-number> in front of the file name. Example: vim +10 tig.c
```
