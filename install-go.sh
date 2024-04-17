rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version
