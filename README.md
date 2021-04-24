
A vim course for LaTeX

## Promised features

- Magic LaTeX conceal for preview within editor 
- [Shortcuts](https://github.com/SirVer/ultisnips) for writing LaTeX with `\infty` power, including:
    * Invoking Mathematica/python/etc within vim for anything
    * Regex conversion: `< 0 |` ---auto magic-----> `\langle 0 |` 
    * Context aware shortcuts: `$$ ;a $$` ----> `$$ \alpha $$`, but `;a` without surrounding `$$` doesn't change. 
- When magic conceal isn't enough: a **live** LaTeX preview using [this tool](https://github.com/iamcco/markdown-preview.nvim)
- Vanilla LaTeX using the famous [VimTeX](https://github.com/lervag/vimtex) plugin


## Install

1. Backup pre-existing vim files if have used vim before:

```
# Linux/MacOS
mv ~/.vimrc ~/.vimrc_backup
mv ~/.vim ~/.vim_backup
```

On windows use file browser to backup `vimfiles` and `.vimrc` from the `$HOME` folder


2. Clone this repository

```
# Linux/MacOS
git clone https://github.com/physicophilic/vim-course ~/.vim
```
On windows you can use the web interface.  See HTG article [here for more on cloning](https://www.howtogeek.com/451360/how-to-clone-a-github-repository/).

**That's it.**

## Usage

Open vim and find a simple setup ready for you.

Many suggestions to learn: 

1. Attend the lectures.
2. Do `vimtutor`
    - Know the `vimrc` file very well.
3. Use `:help` command in vim for what you don't understand.
4. Google
5. Stack Overflow

## Like the course?

Leave a feedback on my email.

