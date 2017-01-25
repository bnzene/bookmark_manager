Discuss each point of the specification with your pair partner
Write User stories/features for showing a list of links
Write User stories/features for adding new links
Write User stories/features for adding tags to links
Write User stories/features for filtering links by a tag
Draw a rough domain model
Put all these user stories in your project README

Stakeholder
Motivation
Task

As an internet user
So I can return to interesting websites
I'd like to see a list of links from the database

As an internet user
So I can save
I'd like to add links to said database

As an internet user
So I can organise the database
I'd like to add tags to the links I save in the a database

As an internet user
So I can easily find what I want in the database
I'd like to filter links in the database by tag

As a time-pressed user
So that I can quickly go to web sites I regularly visit
I would like to see a list of links on the homepage

Nouns:
* User
* weblinks
* database
  Client------->Controller------->Server

Domain model:
Objects        | Methods              |State
---------------|----------------------|---------
User class     | Create account       | Username
Weblink class  | Create link; Add tag | Tags
Database class | Save link; Find link | Links
