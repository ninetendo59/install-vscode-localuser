# Extract the .deb package
dpkg-deb -x ~/Downloads/myvscode.deb ~/myvscode

# Add alias to the shell configuration file
if [[ $SHELL == *"zsh"* ]]; then
    echo "alias code='~/myvscode/usr/share/code/code'" >> ~/.zshrc
elif [[ $SHELL == *"bash"* ]]; then
    echo "alias code='~/myvscode/usr/share/code/code'" >> ~/.bashrc
else
    echo "Please add the alias 'alias code=\"~/myvscode/usr/share/code/code\"' to your shell configuration file manually."
fi

# Create a desktop entry for the custom version of Visual Studio Code
cat <<EOL > ~/.local/share/applications/my-vscode.desktop
[Desktop Entry]
Name=vscode myown
Comment=Custom version of Visual Studio Code
Exec=~/myvscode/usr/share/code/code
Icon=~/myvscode/usr/share/pixmaps/vscode.png
Terminal=false
Type=Application
Categories=Development
EOL