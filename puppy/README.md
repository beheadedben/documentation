# Puppy Linux

## How to install MariaDb
First off install the `mariadb_server` package from `ppm`.
Now run the following:
>```
> $ adduser mysql
>```
>```
> $ chown -R mysql /var/lib/mysql
>```
>```
> $ mysql_install_db --user=mysql --ldata=/var/lib/mysql
>```
>```
> $ mysqld --initialize --user=mysql
>```
>```
> $ mysqld -u mysql
>```

Now to run MariaDb just
>```
> $ mariadb
>```

## How to run the PlantUML Jar
First off install `graphviz` from `ppm`.

Now from the puppy menu, go into `System` > `PupControl` > `GetSFS`
and select the `java` SFS.

You might have to load the SFS you have just downloaded.
go into `System` > `PupControl` > `LoadSFS`
and select the `java` SFS.

Run the following in the terminal once:
>```
> $ dot -c
>```

You are now ready to go!

# How to install composer
First install `composer`, `php-json`, `php-phar` from `ppm`.
Composer may return an error if it doesn't find the php binary at `/usr/bin/php`.
> ```
> $ sudo ln -s /usr/bin/php7.4 /usr/bin/php
> ```

You can verify your php modules running
> ```
> $ php -m
> ```

If a module isn't listed you have to load it inside of your `php.ini` file.
to find where php is looking for `php.ini`, run the following command:

> ```
> $ php --ini
> ```

To find your default template configs, run the following:
> ```
> $ find / -name "php.ini*" 2>/dev/null
> ```

Copy the one you want to use to the location told by `php --ini`.
For example you might run:
> ```
> $ cp /etc/php/7.4/cli/conf.d/php.ini-development /etc/php/7.4/cli/php.ini
> ```

Add to it the followings:
```
extension=json.so
extension=phar.so
```

Now run this again to see if the modules got loaded correctly:
> ```
> $ php -m
> ```

You might get a memory limit error, to increase the limit add the following
to your `php.ini`:
```
memory_limit=-1
```

# How to install php 8.4
`ppm` provides an old version of php, 7.4. If you want to install
the latest version of php then download the source code from 
<https://www.php.net/downloads.php>. Extract it.
To compile it run:
> ```
> $ ./configure
> ```
> ```
> $ make
> ```
> ```
> $ make test
> ```
> ```
> $ make install
> ```
You can place the directory inside of `my-applications`, and create the 
symbolic link to `php/sapi/cli/php`.

# Resources
1. <https://www.forum.puppylinux.com/viewtopic.php?t=4489/>
2. <https://getcomposer.org/doc/articles/troubleshooting.md#memory-limit-errors>

