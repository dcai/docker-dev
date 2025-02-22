TARGET=${HOME}
mkdir -p ${TARGET}/.local/bin
git clone https://github.com/dcai/.vim.git ${TARGET}/.config/nvim --depth=1
git clone https://github.com/junegunn/fzf.git ${TARGET}/.fzf --depth=1
${TARGET}/.fzf/install --all
echo "[user]" >${TARGET}/.gitconfig.local
echo "name = Dongsheng Cai" >>${TARGET}/.gitconfig.local
echo "email = d@tux.im" >>${TARGET}/.gitconfig.local
