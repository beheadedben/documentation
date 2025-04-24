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

# Resources
- <https://www.forum.puppylinux.com/viewtopic.php?t=4489/>
You are now ready to go!
