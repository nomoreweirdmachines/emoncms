# Install Emoncms on Ubuntu / Debian Linux

This guide should work on most debian systems including Ubuntu. For installation guide on installing emoncms on a raspberrypi see the [RaspberryPi installation guides](RaspberryPi/readme.md).

# Interactive session of these steps

https://www.katacoda.com/astralship/scenarios/emon-cms


## Install dependencies

You may need to start by updating the system repositories

    sudo apt-get update

**For Ubuntu 16.04:**

*PHP7*

    sudo apt-get install apache2 mysql-server mysql-client php libapache2-mod-php php-mysql php-curl php-pear php-dev php-mcrypt php-json git-core redis-server build-essential php7.0-mbstring -y

**For Ubuntu 18.04:**

*PHP 7.2*

    sudo apt-get install apache2 mysql-server mysql-client php libapache2-mod-php php-mysql php-curl php-pear php-dev php-json git-core redis-server build-essential php7.2-mbstring -y

### Install PHP pecl dependencies

*Not essential, required for mail sending e.g. password recovery*

    sudo pear channel-discover pear.swiftmailer.org
    sudo pecl install swift/swift redis

 **If running PHP7:** Add pecl modules to php7 config

    printf "extension=redis.so" | sudo tee /etc/php/7.0/mods-available/redis.ini 1>&2
    sudo phpenmod redis

 **If running PHP7.2:** Add pecl modules to php7.2 config

    printf "extension=redis.so" | sudo tee /etc/php/7.2/mods-available/redis.ini 1>&2
    sudo phpenmod redis

### Configure Apache

Emoncms uses a front controller to route requests, modrewrite needs to be configured:

```
sudo a2enmod rewrite
sudo cat <<EOF >> /etc/apache2/sites-available/emoncms.conf
<Directory /var/www/html/emoncms>
    Options FollowSymLinks
    AllowOverride All
    DirectoryIndex index.php
    Order allow,deny
    Allow from all
</Directory>
EOF
printf "ServerName localhost" | sudo tee -a /etc/apache2/apache2.conf 1>&2
sudo a2ensite emoncms
sudo service apache2 reload
```

## Install Emoncms

Git is a source code management and revision control system but at this stage we use it to just download and update the emoncms application.

First cd into the /var/www directory:

    cd /var/www/

Set the permissions of the html directory to be owned by your username:

    sudo chown $USER html

Cd into html directory

    cd html

Download emoncms using git:

**You may want to install one of the other branches of emoncms here, perhaps to try out a new feature set not yet available in the master branch. See the branch list and descriptions on the [start page](https://github.com/emoncms/emoncms)**

    git clone -b stable https://github.com/emoncms/emoncms.git

Once installed you can pull in updates with:

    cd /var/www/html/emoncms
    git pull
    
## Create a MYSQL database

    mysql -u root -p

Enter the mysql password that you set above.
Then enter the sql to create a database:

    mysql> CREATE DATABASE emoncms DEFAULT CHARACTER SET utf8;

Then add a user for emoncms and give it permissions on the new database (think of a nice long password):

    mysql> CREATE USER 'emoncms'@'localhost' IDENTIFIED BY 'YOUR_SECURE_PASSWORD_HERE';
    mysql> GRANT ALL ON emoncms.* TO 'emoncms'@'localhost';
    mysql> flush privileges;

Exit mysql by:

    mysql> exit
    
### Create data repositories for emoncms feed engines

    sudo mkdir /var/lib/phpfiwa
    sudo mkdir /var/lib/phpfina
    sudo mkdir /var/lib/phptimeseries

    sudo chown www-data:root /var/lib/phpfiwa
    sudo chown www-data:root /var/lib/phpfina
    sudo chown www-data:root /var/lib/phptimeseries

## Setup Emoncms settings

cd into the emoncms directory where the settings file is located

    cd /var/www/html/emoncms/

Make a copy of example.settings.ini and call it settings.ini

    cp example.settings.ini settings.ini

Open settings.ini in an editor:

    nano settings.ini

Update your database settings to use your new secure password:

    [sql]
    server = "localhost"
    database = "emoncms"
    username = "emoncms"
    password = "my_secure_password"

You may also want to configure other settings, see the default-settings.ini file for a list of all available settings.

Save (Ctrl-X), type Y and exit

### Install add-on emoncms modules (optional)

    cd /var/www/html/emoncms/Modules
    git clone -b stable https://github.com/emoncms/graph.git
    git clone https://github.com/emoncms/device.git
    git clone -b stable https://github.com/emoncms/dashboard.git
    git clone -b stable https://github.com/emoncms/app.git

The 'modules' need to save their configurations in the emoncms database, so in your browser - update your emoncms database:
`Setup > Administration > Update database` (you may need to log out, and log back into emoncms to see the Administration menu).

See individual module readme's for further information on individual module installation.

## Running Emoncms

[http://localhost/emoncms](http://localhost/emoncms)

The first time you run emoncms it will automatically setup the database and you will be taken straight to the register/login screen.

Create an account by entering your email and password and clicking register to complete.

***

x_value_length" in /etc/php5/conf.d/suhosin.ini" to large
value (8000, 16000 should be fine).

#### Enable Multi lingual support using gettext

Follow the guide here step 4 onwards: [https://github.com/emoncms/emoncms/blob/master/docs/gettext.md](https://github.com/emoncms/emoncms/blob/master/docs/gettext.md#4-install-gettext)

#### Configure PHP Timezone

PHP 5.4.0 has removed the timezone guessing algorithm and now defaults the timezone to "UTC" on some distros (i.e. Ubuntu 13.10). To resolve this:

Open php.ini

    sudo nano /etc/php5/apache2/php.ini

and search for "date.timezone"

    [Date]
    ; Defines the default timezone used by the date functions.
    ; http://php.net/date.timezone
    ;date.timezone =

edit date.timezone to your appropriate timezone:

    date.timezone = "Europe/Amsterdam"

PHP supported timezones are listed here: http://php.net/manual/en/timezones.php

Now save and close and restart your apache.

    sudo service apache2 restart

## Install Logger

   See: https://github.com/emoncms/emoncms/tree/master/scripts/logger


***

# Debugging

### Check log file

`sudo tail /var/log/apache2/error.log`

### /user/register.json cannot be found

If the login page loads but a user cannot be created and error `invalid` is displayed and console log shows error `/user/register.json` cannot be found this indicates a problem with apache mod_rewrite.
