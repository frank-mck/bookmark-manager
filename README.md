# bookmark-manager


## User stories
```
As a user
So I can manage my bookmark
I want to be shown a list of bookmarks

As a user
So I can keep the bookmarks I want
I want to update my bookmarks by adding bookmarks

As a user
So I can keep the bookmarks I want
I want to update my bookmarks by deleting bookmarks

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

## Set up and install SQL:

### 1. Use Homebrew to install the package

```
brew install postgresql
```

After Homebrew has downloaded PostgreSQL it will show you some installation instructions: follow them!

### 2. Allow Homebrew to start and stop the Postgres service

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

### 5. Create a table in psql

```
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
```
Now inspect the list of tables again, using `\dt`. You should see one with the name bookmarks.


### 6. Listing all database tables
You can use one of psql's special non-SQL commands to list databases:

```
postgres=# \l
```

### 7. Quitting psql

```
postgres=# \q
```

### 3. Documenting the database setup

It's a good idea to keep a record of how the database has been setup, both for your future reference and so that anyone contributing to your project knows how to setup the database.

First lets create a directory for the database setup called db, and a sub-directory within it, migrations.

```
 db/
  migrations/
```

Now let's create a file called 01_create_bookmarks_table.sql in the migrations directory, to record the SQL queries we ran to create the bookmarks table:

```
# in migrations/01_create_bookmarks_table.sql
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
```

In this case the extension .sql is being used to indicate that the text inside is a SQL query.


