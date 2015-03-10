# Install chruby with ruby-install and install ruby 2.1.2
git clone https://github.com/postmodern/chruby.git /home/vagrant/.chruby
echo -e '\nsource /usr/local/share/chruby/chruby.sh' >> /home/vagrant/.bashrc
sudo -H -u vagrant bash -c 'cd /home/vagrant/.chruby && sudo make install'

git clone https://github.com/postmodern/ruby-install.git /home/vagrant/.ruby-install
sudo -H -u vagrant bash -c 'cd /home/vagrant/.ruby-install && sudo make install'

echo 'Installing Ruby 2.1.2...'
ruby-install ruby 2.1.2 > /dev/null 2>&1

# Set default Ruby to be 2.1.2
echo -e '\nchruby ruby-2.1.2' >> /home/vagrant/.bashrc

# Create .gemrc file
echo 'gem: --no-ri --no-rdoc' >> /home/vagrant/.gemrc

# Create .tmux.conf file
echo 'unbind C-b
set-option -g prefix `
bind-key ` send-prefix' >> /home/vagrant/.tmux.conf

# Install bundler and compass
echo 'Installing default gems...'
sudo -H -u vagrant bash -c 'export PATH="/home/vagrant/.rubies/ruby-2.1.2/bin:$PATH" && gem install bundler compass > /dev/null 2>&1'

curl https://raw.githubusercontent.com/creationix/nvm/v0.23.3/install.sh | bash
source /home/vagrant/.nvm/nvm.sh && nvm install v0.10.33

echo 'sve postavljeno, pici!'
