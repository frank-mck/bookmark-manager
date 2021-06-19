# Bookmark-manager

Makers week 4 pair programming challenge. Here i have built a Sinatra application that can read and write from and to a database. It's structured in an MVC(Model, Views, Controller) style, and has test and development environments.

## Technical Skills 

- Object relational mapping
- PSQL
- REST
- Domain modelling

## Screens

<img alt ='bookmark first page' src ="https://raw.githubusercontent.com/frank-mck/bookmark-manager/main/img/Screenshot%202021-06-19%20at%2013.21.44.png" width="400px" style="display: block;" />
<img alt ='bookmark first page' src ="https://raw.githubusercontent.com/frank-mck/bookmark-manager/main/img/Screenshot%202021-06-19%20at%2013.22.07.png" width="400px" style="display: block;" />
<img alt ='bookmark first page' src ="https://raw.githubusercontent.com/frank-mck/bookmark-manager/main/img/Screenshot%202021-06-19%20at%2013.22.22.png" width="400px" style="display: block;" />

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

## Domain model

<img alt ='domain model' src ='https://raw.githubusercontent.com/makersacademy/course/master/bookmark_manager/images/bookmark_manager_1.png?token=ASO6TKRBILPQ7T2C3RSLM2DA24QQC' />

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

## How to use

- `git clone https://github.com/frank-mck/bookmark-manager.git`
- `cd bookmark-manager`
- `bundle install`
- Open `http://localhost:9292/` in browser, then run `rack up`.

For testing 
- `gem install rspec`
- `rspec`
