## Portfolio

A portfolio website with an admin system. 

GitHub Link: https://github.com/KaijuKevin/portfolio

Heroku Link: https://warm-headland-5073.herokuapp.com/

### Description

Portfolio lets an admin create and update skills and projects.
Made for an assesment at Epicodus.

### Installation

Portfolio uses Ruby 2.1.3
You will need to install the bundle gem and rails. In your terminal,
navigate to the project directory and run this command:

```console
$ bundle install
$ gem install rails
```
You will also have to migrate the database with postgres. If you do not
already have postgres, download it with Homebrew.

```console
$ brew install postgres
$ postgres
```

In a different terminal tab:

```console
$ rake db:create
$ rake db:migrate
$ rake db:test:prepare
```

To run the page, enter this command in your terminal

```console
$ rails server
```

In your web browser, enter this url: http://localhost:3000

### Authors

Kevin Chen
GitHub: https://github.com/KaijuKevin

### 	Lisence 

MIT Lisence (c) 2015 Kevin Chen