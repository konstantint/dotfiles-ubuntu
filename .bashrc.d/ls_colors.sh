# Configures LS to color different files types differently
# The downside is that symlinks are not distinguishable from normal
# files anymore.
eval $( dircolors -b $HOME/.bashrc.d/LS_COLORS )
