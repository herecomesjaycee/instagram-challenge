Instagram Challenge
===================

Instructions
-------
* Challenge time: one weekend
* Feel free to use Google, your notes, books, etc., but work on your own
* If you refer to the solution of another coach or student, please put a link to that in your README
* If you have a partial solution, **still check in a partial solution**
* You must submit a pull request to this repo with your code by 9am Monday morning

Task
-----

Build Instagram: Simple huh!

Bonus if you can write your own set of sensible user stories!

As usual please start by forking this repo. After cloning your fork and cd'ing into it, you'll need to [initialize a Rails app in the current directory](http://blog.jasonmeridth.com/posts/create-rails-application-in-current-directory/).

Your challenge is to build Instagram using Rails. You'll need **users** who can post **pictures**, write **comments** on pictures and **like** a picture. Style it like Instagram's website (or more awesome).

Bonus if you can add filters!

User Stories
-----

```
As a visitor,
So I can see what Instagram is,
I should be able to see all the posted pictures
```

```
As a visitor,
So I can start using Instagram,
I should be able to sign up as a new user
```

```
As a returned user,
So I can start posting photos,
I should be able to log in
```

```
As an user,
So I can start commenting photos
I should be able to post a comment
```

```
As an user,
So I can rate photos
I should be able to click 'Like' button
```
Installation Guide
-----
1) Git Fork/Clone this repository `git clone https://github.com/herecomesjaycee/instagram-challenge.git`

2) Change directory into 'instagram-challenge' `cd instagram-challenge` 

3) Change directory into 'instagram' `cd instagram`

4) Install bundle `bundle install`

5) Run database creation `bin/rake db:create`

6) Run database migration `bin/rake db:migration`

7) Run the server `bin/rails s`

8) Type in `localhost:3000` to start enjoying the Instagram app

Screenshot
---
![screen shot 2017-03-01 at 09 20 49](https://cloud.githubusercontent.com/assets/13175171/23453509/8bae84ae-fe60-11e6-8ed4-abd3203afbac.png)


