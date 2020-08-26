
sudo dnf -y update
sudo dnf -y install wget gcc openssl-devel bzip2-devel libffi-devel

cd /tmp/
wget https://www.python.org/ftp/python/3.8.5/Python-3.8.5.tgz
tar xzf Python-3.8.5.tgz
cd Python-3.8.5

sudo ./configure --prefix=/opt/python38 --enable-optimizations --with-lto --with-system-ffi --with-computed-gotos --enable-loadable-sqlite-extensions
sudo make -j "$(nproc)"
sudo make altinstall

sudo rm /tmp/Python-3.8.5.tgz

sudo ln -s /opt/python38/bin/python3.8 /opt/python38/bin/python3
sudo ln -s /opt/python38/bin/python3.8 /usr/bin/python38
sudo ln -s /opt/python38/bin/python3.8 /opt/python38/bin/python
sudo ln -s /opt/python38/bin/python3.8-config /opt/python38/bin/python-config
sudo ln -s /opt/python38/bin/pydoc3.8 /opt/python38/bin/pydoc
sudo ln -s /opt/python38/bin/idle3.8 /opt/python38/bin/idle

sudo ln -s /opt/python38/bin/pip3.8 /opt/python38/bin/pip3
sudo ln -s /opt/python38/bin/pip3.8 /opt/python38/bin/pip

/opt/python38/bin/pip -V

/opt/python38/bin/python -V

which python38

/usr/bin/python38 -V

/opt/python38/bin/python3.8-config --prefix



