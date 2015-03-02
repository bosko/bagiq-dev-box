# Install rbenv with rbenv-build and install ruby
git clone https://github.com/sstephenson/rbenv.git /home/vagrant/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/vagrant/.bashrc
echo 'eval "$(rbenv init -)"' >> /home/vagrant/.bashrc
git clone https://github.com/sstephenson/ruby-build.git /home/vagrant/.rbenv/plugins/ruby-build
sudo -H -u vagrant bash -c 'export PATH="/home/vagrant/.rbenv/bin:$PATH" && eval "$(rbenv init -)" && rbenv install 2.1.2'
sudo -H -u vagrant bash -c 'export PATH="/home/vagrant/.rbenv/bin:$PATH" && eval "$(rbenv init -)" && rbenv global 2.1.2'

# Create .gemrc file
echo 'gem: --no-ri --no-rdoc' >> /home/vagrant/.gemrc

# Create .tmux.conf file
echo 'unbind C-b
set-option -g prefix `
bind-key ` send-prefix' >> /home/vagrant/.tmux.conf

# Install bundler and compass
sudo -H -u vagrant bash -c 'export PATH="/home/vagrant/.rbenv/bin:$PATH" && eval "$(rbenv init -)" && gem install bundler compass > /dev/null 2>&1'

echo 'sve postavljeno, pici!'
