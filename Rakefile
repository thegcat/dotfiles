#!/usr/bin/env rake

require 'rubygems'
require 'yaml'
require 'exogenesis'

Output.fancy

ship = Ship.new(YAML.load_file('packages.yml'))

[:up, :down, :clean].each do |task_name|
  desc "#{task_name.capitalize} the Dotfiles"
  task task_name do
    ship.public_send task_name
  end
end


