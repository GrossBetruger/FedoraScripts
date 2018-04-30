wget https://dl.google.com/linux/linux_signing_key.pub

sudo rpm --import linux_signing_key.pub

sudo dnf install https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
