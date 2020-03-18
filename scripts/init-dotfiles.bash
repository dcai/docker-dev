TARGET=${HOME}
mkdir -p ${TARGET}/.local/bin
git clone https://github.com/dcai/.vim.git ${TARGET}/.vim --depth=1
git clone https://github.com/dcai/.tmuxinator.git ${TARGET}/.tmuxinator
git clone https://gist.github.com/2030ba4091ae888aa0e023c2e2018554.git ${TARGET}/.config/git
wget -q https://gist.githubusercontent.com/dcai/a2e7ca940babda0c7137/raw/fd36a484b44ba9a58d27b7d9ab6e47eef9d988fc/.tmux.conf ${TARGET}/.tmux.conf
git clone https://github.com/junegunn/fzf.git ${TARGET}/.fzf --depth=1
${TARGET}/.fzf/install --all
echo "[user]" >${TARGET}/.gitconfig.local
echo "name = Dongsheng Cai" >>${TARGET}/.gitconfig.local
echo "email = d@tux.im" >>${TARGET}/.gitconfig.local
