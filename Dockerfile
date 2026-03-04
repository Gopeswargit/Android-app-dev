# Dockerfile
FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

RUN apt-get update && apt-get install -y \
    tightvncserver \
    xfce4 \
    xfce4-goodies \
    && rm -rf /var/lib/apt/lists/*

USER vscode
ENV USER=vscode
RUN mkdir -p /home/vscode/.vnc \
    && echo "vncpasswd" | vncpasswd -f > /home/vscode/.vnc/passwd \
    && chmod 600 /home/vscode/.vnc/passwd

