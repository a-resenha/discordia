# frozen_string_literal: true

require 'discordrb'
require 'dotenv'

Dotenv.load

bot = Discordrb::Bot.new token: ENV['DISCORD_TOKEN']

bot.message(content: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.run