# the progress report is nice and concise.
function install {
    echo installing $1
    shift
    apt-get -y install "$@" >/dev/null 2>&1
}

echo updating package information

# apt-add-repository -y ppa:brightbox/ruby-ng >/dev/null 2>&1
apt-get -y update >/dev/null 2>&1

install 'Various utils' wget curl autoconf openssl htop freetds-common freetds-dev tmux
install 'Ruby dependencies 1' zlib1g-dev libssl-dev libreadline-dev libyaml-dev libcurl4-openssl-dev
install 'Ruby dependencies 2' libffi-dev libreadline6 libpcre3  libpcre3-dev
install 'Nokogiri dependencies' libxml2 libxml2-dev libxslt1-dev

install memcached memcached
install Redis redis-server

install Git git
install SQLite sqlite3 libsqlite3-dev

install 'development tools' build-essential

install 'ExecJS runtime and npm package manager' nodejs npm

# Needed for docs generation.
update-locale LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8

echo 'system podesen, spremno za Ruby'
