FROM mcr.microsoft.com/devcontainers/go

RUN apt update && apt install -y libx264-dev libnlopt-dev

RUN chsh -s /usr/bin/zsh vscode

USER vscode
RUN curl https://mise.run | sh
RUN echo 'eval "$(mise activate zsh)"' >> ~vscode/.zshrc

