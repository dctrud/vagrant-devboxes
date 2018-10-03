SINGULARITY_RELEASE_BRANCH=release-2.4
SINGULARITY_DEVELOPMENT_BRANCH=development-2.x

cd /home/vagrant
mkdir Git
cd Git

# Release suid
git clone https://github.com/sylabs/singularity.git release
cd release
git checkout ${SINGULARITY_RELEASE_BRANCH}
./autogen.sh
./configure --prefix=/home/vagrant/singularity-${SINGULARITY_RELEASE_BRANCH}
make
sudo make install

#
cd /home/vagrant/Git
#

# Release nosuid
git clone https://github.com/sylabs/singularity.git release-nosuid
cd release-nosuid
git checkout ${SINGULARITY_RELEASE_BRANCH}
./autogen.sh
./configure --prefix=/home/vagrant/singularity-${SINGULARITY_RELEASE_BRANCH}-nosuid --disable-suid
make
make install

#
cd /home/vagrant/Git
#

# Dev suid
git clone https://github.com/sylabs/singularity.git development
cd development
git checkout ${SINGULARITY_DEVELOPMENT_BRANCH}
./autogen.sh
./configure --prefix=/home/vagrant/singularity-${SINGULARITY_DEVELOPMENT_BRANCH}
make
sudo make install

#
cd /home/vagrant/Git
#

# Release nosuid
git clone https://github.com/sylabs/singularity.git development-nosuid
cd development-nosuid
git checkout ${SINGULARITY_DEVELOPMENT_BRANCH}
./autogen.sh
./configure --prefix=/home/vagrant/singularity-${SINGULARITY_DEVELOPMENT_BRANCH}-nosuid --disable-suid
make
make install
