#!/bin/bash

librarian-chef install

sudo chef-client --config system_client.rb --local-mode --runlist 'recipe[system]'
chef-client --config user_client.rb --local-mode --runlist 'recipe[user]'
