# bookmark-manager


## User stories
```
As a user
So I can manage my bookmark
I want to be shown a list of bookmarks

As a user
So I can keep the bookmarks I want
I want to update my bookmarks by adding and deleting bookmarks

As a user
So I can add information to bookmarks
I want to be able to add comments on bookmarks

As a user
So I can manage my bookmarks
I want to tag my bookmarks into categories

As a user 
So I can view bookmarks by category
I want to view only bookmarks by tag

As a user
So I can manage only my own bookmarks
I want to sign in to access my bookmarks
```

## Set up SQL

## Install PostgreSQL:

### 1. Use Homebrew to install the package
```
brew install postgresql
```
After Homebrew has downloaded PostgreSQL it will show you some installation instructions: follow them!

### 2. Allow Homebrew to start and stop the Postgres service

PostgreSQL is a database management service. It's handy to keep PostgreSQL running 'in the background'. This command will start PostgreSQL in the background and restart it when you login:
```
brew services start postgresql
```

### 3. Interact with the PostgreSQL database management system

To start psql, type `psql <database name>` into a Terminal, where `<database name>` is the name of the database you want to interact with. So, typing `psql` postgres will give us direct access to that first database:
```
psql postgres
postgres=#
```

### 4. Create a database using SQL
```
postgres=# CREATE DATABASE "your_user_name_here";
```

### 5. Listing all database tables
You can use one of psql's special non-SQL commands to list databases:
```
postgres=# \l
```

### 6. Quitting psql
```
postgres=# \q
```

1. Connecting to `psql`
Assuming you have psql installed and working, connect to your pool of databases like so:
```
$> psql
```
Which should give you a command prompt similar to this one:
```
psql (9.3.5)
Type "help" for help.

admin=#
```
`psql` has two 'groups' of commands:

- Commands beginning with a `\` are psql-specific commands (e.g. connecting to      databases using \c).
- Everything else is part of SQL (e.g. SELECT * FROM ...), so can be used with any SQL-based Relational Database.

Let's have a look at the existing databases:
```
$ \l
```

2. Creating a database for Bookmark Manager
Let's create a new database, and call it bookmark_manager:
```
admin=# CREATE DATABASE bookmark_manager;
```
And inspect the existing list of tables:
```
admin=# \dt
```
We should get something along the lines of `No relations found..` That makes sense: we haven't built anything in this database yet.


We're going to make a bookmarks table that will store bookmarks from our application. We can use SQL commands from psql:
```
bookmark_manager=# CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
```
Now inspect the list of tables again, using \dt. You should see one with the name bookmarks.

5. Documenting the database setup
It's a good idea to keep a record of how the database has been setup, both for your future reference and so that anyone contributing to your project knows how to setup the database.

First lets create a directory for the database setup called db, and a sub-directory within it, migrations.

- db/
  - migrations/
Now let's create a file called 01_create_bookmarks_table.sql in the migrations directory, to record the SQL queries we ran to create the bookmarks table:
```
# in migrations/01_create_bookmarks_table.sql
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
```
In this case the extension .sql is being used to indicate that the text inside is a SQL query.


