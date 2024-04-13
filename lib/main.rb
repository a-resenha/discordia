# frozen_string_literal: true

require 'discordrb'
require 'dotenv'

Dotenv.load

bot = Discordrb::Bot.new token: ENV['DISCORD_TOKEN']

bot.ready do
  RESENHA_SERVER_NAME = 'A Resenha'
  resenha = nil
  bot.servers.each do |id, server|
    resenha = server if server.name == RESENHA_SERVER_NAME
  end
end

bot.run