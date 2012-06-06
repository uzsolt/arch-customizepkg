# This is an example of config file for customizepkg
#  Copy this file in /etc/customizepkg.d/epdfview to use it
#
# syntax works like this:
#ACTION CONTEXT PATTERN VALUE 
#
#Action can be: remove, add or replace
#Context can be: depends, conflicts, makedepends etc.. or global for matching regexp in the all PKGBUILD
#Pattern can be any rexgexp 
#Value (optionnal) can be any string 
#
remove#pkgname#gvim
replace#global#cp -a vim-buil#ln -s vim-build#
replace#global#.*cd .*gvim-build.*#<<COMMENT
replace#global#--enable-luainterp#\\nCOMMENT

replace#global#.* disable tests.*#<<COMMENT
replace#global#.*make test.*#COMMENT
replace#global#.*freedesktop.*#COMMENT

replace#global#rm -r ".*".*#mv "${pkgdir}"\\/usr\\/share\\/vim "${srcdir}"\\/runtime-install

remove#makedepends#gpm
remove#depends#gpm
remove#makedepends#ruby
remove#global#'gpm'
replace#global#--enable-gpm#--disable-gpm
