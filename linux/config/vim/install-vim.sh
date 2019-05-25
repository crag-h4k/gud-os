dst="~/.vim"
#atld=$dst/autoload
bundle=./bundle

#mkdir -p $bundle $atld
#cd $dst
#git init $dst
#rsync -a * $dst/.
git submodule add git://github.com/mephux/bro.vim.git $bundle/bro
git submodule add git://github.com/luochen1990/rainbow $bundle/rainbow
git submodule add git://github.com/flazz/vim-colorschemes $bundle/vim-colorschemes
git submodule add git://github.com/ervandew/supertab $bundle/supertab
