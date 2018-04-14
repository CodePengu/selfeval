# selfeval
Determine whether students are ready to take CSCE 629, so they can decide whether to sign up.

<<<<<<< HEAD
    ,-----.,--.                  ,--. ,---.   ,--.,------.  ,------.
    '  .--./|  | ,---. ,--.,--. ,-|  || o   \  |  ||  .-.  \ |  .---'
    |  |    |  || .-. ||  ||  |' .-. |`..'  |  |  ||  |  \  :|  `--,
    '  '--'\|  |' '-' ''  ''  '\ `-' | .'  /   |  ||  '--'  /|  `---.
     `-----'`--' `---'  `----'  `---'  `--'    `--'`-------' `------'
    -----------------------------------------------------------------


Hi there! Welcome to Cloud9 IDE!

This Cloud9 system is designed to be used with the [Ruby on Rails Tutorial](http://www.railstutorial.org/) by Michael Hartl. Full setup instructions can be found for free online in the [*Ruby on Rails Tutorial* book](http://www.railstutorial.org/book).

For more information on how to use Cloud9, visit http://docs.c9.io for our documentation. If you want, you can also go watch some training videos at
http://www.youtube.com/user/c9ide.

Happy coding!
The Cloud9 IDE team


# selfeval
Determine whether students are ready to take CSCE 629, so they can decide whether to sign up.

=======
>>>>>>> e1fe6f815a4867265d81019270bc1cec102319fd
## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, apply database migrations to both the dev and test databases:

```
$ bundle exec rake db:migrate
$ bundle exec rake db:migrate RAILS_ENV=test
$ bundle exec rake db:seed
```

Run rspec and cucumber tests to make sure everything is working:

```
$ rspec
$ cucumber
```

If the tests pass, you'll be ready to run the app in a local server:

```
$ rails server -p $PORT -b $IP
```


