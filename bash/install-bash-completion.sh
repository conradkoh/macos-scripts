# Create the folder structure
mkdir -p ~/.zsh
cd ~/.zsh

# Download the scripts
curl -o git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o _git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh

echo "Print the following content to the ~/.zshrc file"
echo "# Load Git completion"
echo "zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash"
echo "fpath=(~/.zsh \$fpath)"
echo ""
echo "autoload -Uz compinit && compinit"
read
vim ~/.zshrc
