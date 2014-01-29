# Bulldoggy

A proof of concept inspired on Uncle Bob's Clean Architecture examplified by a **to-do list app** named Bulldoggy.

This gem is the core of the to-do list.

The delivery mechanisms and the databases are deferred decisions, for now the focus on the app itself and not on these details, but the idea is that they act as plugins.

## Installation

Add this line to your application's Gemfile:

    gem 'bulldoggy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bulldoggy --pre

## Usage

### Adding tasks:

```Bulldoggy.add_task('go to the cinema')```

### Fetching tasks:

```Bulldoggy.fetch```
