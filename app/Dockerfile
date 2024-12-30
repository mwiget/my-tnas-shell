FROM lscr.io/linuxserver/openssh-server:latest AS builder

RUN <<EOF

apk update
apk add tmux ipmitool btop mosh git rsync iperf3 bwm-ng k9s kubectl neovim py3-pip npm nodejs cargo ripgrep alpine-sdk curl htop

bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.sh --yes)

wget https://releases.hashicorp.com/terraform/1.10.3/terraform_1.10.3_linux_amd64.zip
unzip terraform_1.10.3_linux_amd64.zip
mv terraform /usr/bin/
rm LICENSE.txt terraform_1.10.3_linux_amd64.zip

wget https://install.speedtest.net/app/cli/ookla-speedtest-1.2.0-linux-x86_64.tgz
tar zxvf ookla-speedtest-1.2.0-linux-x86_64.tgz speedtest
mv speedtest /usr/bin/
rm ookla-speedtest-1.2.0-linux-x86_64.tgz

EOF
