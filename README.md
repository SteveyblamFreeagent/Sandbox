# Sandbox

## Introduction

This repo contains code used as examples in architecture forums and dev meetups.

## Getting started

The sandbox uses sqlite so you don't need any databases running.

```
git clone git@github.com:SteveyblamFreeagent/Sandbox.git
cd sandbox
bundle install
bundle exec rails s
```

## Examples

### Cucumber and Site Prism

The sandbox has a single model create with a scaffold called Example. It has two text fields.

Cucumber features have been written to test the create action and the delete action.

You can run the features like this:

```
bundle exec cucumber
```

Site prism is used to created a "model" of each page being tested allowing you to abstract away common actions on a page, like filling in forms or navigating through menu.

