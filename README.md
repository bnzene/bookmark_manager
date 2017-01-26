# Bookmark Manager
### Makers Academy Weekly Challenge No. 4

### Specification

* It shows a list of **links** from the **database**
* New links can be added
* Links can be tagged
* Links can be filtered by a tag

```
As an Internet user,
So that I can return to interesting websites,
I'd like to see a list of links from the database

As an Internet user,
So that I can save a website to access it later,
I'd like add a link to the database

As an Internet user,
So that I can better organise my bookmarks,
I'd like to tag links stored in the database

As an Internet user,
So that I can find a particular website more quickly,
I'd like to see a list of links from the database filtered by their tag
```


As a time-pressed user
So that I can save a website
I would like to add the site's address and title to my bookmark manager

As a time-pressed user
So that I can quickly go to web sites I regularly visit
I would like to see a list of links on the homepage

As a time-pressed user
So that I can organise my many links into different categories for ease of search
I would like to tag links in my bookmark manager

As a time-pressed user
So that I can quickly find links on a particular topic
I would like to filter links by tag

### Domain model

|Objects  |Messages             |State   |
|---------|:-------------------:|:------:|
|User     |log_in;              |Username|
|Weblinks |add_tag;             |Tags    |
|Database |save_link; find_link |Links   |
