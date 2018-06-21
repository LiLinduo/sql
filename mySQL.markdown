
brew search mysql
brew install mysql@5.7
cd etc
ls my.*

==> Downloading https://homebrew.bintray.com/bottles/mysql@5.7-5.7.22.el_capitan.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/49/4911e822fa6d0737d6e6a95bfd9e1fd970b1db60303a4087ee0f514624440aea?_
######################################################################## 100.0%
==> Pouring mysql@5.7-5.7.22.el_capitan.bottle.tar.gz
==> /usr/local/Cellar/mysql@5.7/5.7.22/bin/mysqld --initialize-insecure --user=onespeedvelo --basedir=/usr/local/Cell
==> Caveats
We've installed your MySQL database without a root password. To secure it run:
    mysql_secure_installation

MySQL is configured to only allow connections from localhost by default

To connect run:
    mysql -uroot

A "/etc/my.cnf" from another install may interfere with a Homebrew-built
server starting up correctly.

This formula is keg-only, which means it was not symlinked into /usr/local,
because this is an alternate version of another formula.

If you need to have this software first in your PATH run:
  echo 'export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"' >> ~/.bash_profile

For compilers to find this software you may need to set:
    LDFLAGS:  -L/usr/local/opt/mysql@5.7/lib
    CPPFLAGS: -I/usr/local/opt/mysql@5.7/include
For pkg-config to find this software you may need to set:
    PKG_CONFIG_PATH: /usr/local/opt/mysql@5.7/lib/pkgconfig


To have launchd start mysql@5.7 now and restart at login:
  brew services start mysql@5.7
Or, if you don't want/need a background service you can just run:
  /usr/local/opt/mysql@5.7/bin/mysql.server start
==> Summary
🍺  /usr/local/Cellar/mysql@5.7/5.7.22: 317 files, 235MB

brew services start mysql@5.7
brew services stop mysql@5.7
