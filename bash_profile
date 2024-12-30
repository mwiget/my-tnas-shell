if command -v apk &> /dev/null; then
  if ! command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    sudo apk add tmux ipmitool btop mosh git rsync iperf3 bwm-ng k9s kubectl neovim py3-pip npm nodejs cargo ripgrep alpine-sdk curl htop
    LV_BRANCH='release-1.4/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.sh)

    wget https://releases.hashicorp.com/terraform/1.10.3/terraform_1.10.3_linux_amd64.zip
    unzip terraform_1.10.3_linux_amd64.zip
    mv terraform /usr/bin/
    rm LICENSE.txt terraform_1.10.3_linux_amd64.zip

    wget https://install.speedtest.net/app/cli/ookla-speedtest-1.2.0-linux-x86_64.tgz
    tar zxvf ookla-speedtest-1.2.0-linux-x86_64.tgz speedtest
    mv speedtest /usr/bin/
    rm zxvf ookla-speedtest-1.2.0-linux-x86_64.tgz
  fi
  if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
  fi
  alias k=kubectl
  alias v=lvim
  export PATH=/config/.local/bin:$PATH
fi
