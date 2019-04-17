dst="/etc/vim"
atld=$dst/autoload
bundle=$dst/bundle

#mkdir -p $bundle $atld
git init $dst
rsync -a * $dst/.
#git submodule add git://github.com/mephux/bro.vim.git $bundle/bro
#git submodule add git://github.com/luochen1990/rainbow $bundle/rainbow
#git submodule add git://github.com/flazz/vim-colorschemes $bundle/vim-colorschemes
#git submodule add git://github.com/ervandew/supertab $bundle/supertab
#git submodule add git://github.com/queezythegreat/vim-YouCompleteMe $bundle/YouCompleteMe
#git submodule add https://github.com/elixir-lang/vim-elixir.git bundle/vim-elixir
