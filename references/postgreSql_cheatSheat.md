#

[create user](https://www.postgresql.org/docs/current/sql-createuser.html)

Reading syntax
[ ] meand options

``` console

psql

create user superuser with superuser password 'passport-here';
echo " if success > creatrole"
echo " to login"
psql -U superuser postgres
echo " to see who you are"
psql -U superuser postgress
echo "create normal user"
create user normal_user with password 'place-password'

```

```console

echo "to drop a user"

drop user <user-to-drop>
```

create database
``` console

create database database_name

\list

```

create datatypes

```code
create dataStructure name(
echo "enter name, datatypes"
echo "to close ')'"
echo " for id
id serial"
```

TO REFERERNCE A KEY
```console
echo "foreign key (person_id) reference nameToReference (id)"
```

TO describe a table
``` console
\d
```
