[![Gem Version](https://badge.fury.io/rb/gorilla_test-rails.svg)](http://badge.fury.io/rb/gorilla_test)

# GorillaTest::Rails

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'gorilla_test-rails', require: 'gorilla_test'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gorilla_test-rails

## Usage
Once the gem is installed, run

    $ rails g gorilla_test:install

This will create an initializer for your project, if you are using
Heroku add-on, it is setup to use the ENV variables that are assigned
to the project.

If you are not using the Heroku add-on, please enter your auth-key and
project id provided to you on Gorilla Test.

To install the script, add the following to your application layout

    gorilla_test_script

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

