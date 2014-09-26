#!/usr/bin/env ruby

require 'sinatra'
require 'execjs'
require './game.rb'

get '/' do
  @my_knight=Knight.new
  @my_dragon=Dragon.new
  @game=Game.new(@my_knight,@my_dragon)
  @game.combat
  @results=@game.conditional
  puts @results
  erb :index
end
