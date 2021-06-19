# bookmark-manager

Makers week 4 pair programming challenge. Here i have built a Sinatra application that can read and write from and to a database. It's structured in an MVC(Model, Views, Controller) style, and has test and development environments.

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

To set up your database, follow given instructions:

- Connect to `psql`
- Create the database using the psql command `CREATE DATABASE bookmark_manager;`
- Connect to the database using the pqsl command `\c bookmark_manager;`
- Run the query we have saved in the file `01_create_bookmarks_table.sql`

 To set up your test database, follow given instructions:

- Connect to `psql`
- Create the database using the psql command `CREATE DATABASE bookmark_manager_test;`
- Connect to the database using the pqsl command `\c bookmark_manager_test;`
- Run the query we have saved in the file `01_create_bookmarks_table.sql`