#!/bin/bash

docker-compose run --rm web bundle exec rake mastodon:setup
