#v3.1
FROM codercom/code-server
RUN sudo apt-get update \
&& sudo apt-get install -y \
    android-tools-adb \
    zsh \
    python \
    libltdl7
RUN wget -O- https://aka.ms/install-vscode-server/setup.sh | sh
# install oh-my-zsh
RUN export RUNZSH=yes && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && sudo chsh -s /bin/zsh
RUN sudo mv /usr/local/bin/fixuid /usr/local/sbin/fixuid
RUN curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh
