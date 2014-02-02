# Bulldoggy

[![Build Status](https://travis-ci.org/bezelga/bulldoggy.png?branch=master)](https://travis-ci.org/bezelga/bulldoggy)
[![Code Climate](https://codeclimate.com/repos/52e6f81869568017b5003aa8/badges/a99a662bbea4283cf60f/gpa.png)](https://codeclimate.com/repos/52e6f81869568017b5003aa8/feed)

A **to-do list app** inspired by Uncle Bob's Clean Architecture.

The idea of is to have a concrete implementation of the architecture and use various deliveries mechanisms and storages that will act as plugins to the core app.

Implementations of the delivery mechanisms are welcome and will be listed here:

## Web as the delivery mechanism:

* [bulldoggy-sinatra](https://github.com/bezelga/bulldoggy-sinatra)

## CLI (command line interface) as the delivery mechanism:

* [bulldoggy-thor](https://github.com/philss/bulldoggy-thor)

## Installation

Add this line to your application's Gemfile:

    gem 'bulldoggy', '~> 0.0.1.alpha'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bulldoggy --pre

## Usage

### Adding tasks:

    task = Bulldoggy.add_task('go to the cinema')

### Checking tasks:

    Bulldoggy.check_task(task.id)

### Unchecking tasks:

    Bulldoggy.uncheck_task(task.id)

### Removing tasks:

    Bulldoggy.remove(task.id)

### Fetching tasks:

    Bulldoggy.fetch
