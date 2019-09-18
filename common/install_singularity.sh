# Install go
export VERSION=1.12.9 OS=linux ARCH=amd64
wget -q -O /tmp/go${VERSION}.${OS}-${ARCH}.tar.gz https://dl.google.com/go/go${VERSION}.${OS}-${ARCH}.tar.gz && \
  sudo tar -C /opt -xzf /tmp/go${VERSION}.${OS}-${ARCH}.tar.gz
export PATH="$PATH:/opt/go/bin"

# Install golangci-lint
curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh |
  sh -s -- -b $(go env GOPATH)/bin v1.17.0

cd /home/vagrant
mkdir Git
cd Git

git clone https://github.com/sylabs/singularity.git
cd singularity
./mconfig
cd ./builddir
make
sudo make install

