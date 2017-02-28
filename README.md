# 2017-battle
Makers Academy pre-course week 3 - a simple browser-based game developed through TDD, with Capybara and Selenium for feature tests, RSpec test framework, and Sinatra web application framework. It forces Ruby 2.3.1 for compatibility with a builder gem used in initial construction of the code base. Because it was developed in Windows Subsystem for Linux, Selenium is set up to communicate with a remote server rather than an on-server one. See [this gist for more info on the remote Selenium setup](https://gist.github.com/DanielJohnston/5cea26ae0861ce1520695cff3c2c3315).

# User stories
```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP
```
