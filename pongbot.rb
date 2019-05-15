require 'slack-ruby-bot'

class PongBot < SlackRubyBot::Bot
  command 'ping' do |client, data, match|
    client.say(text: 'pong', channel: data.channel)
  end
end

PongBot.run

# Execute this
# SLACK_API_TOKEN=xoxb-599818858115-608584645091-OTOF167WGuCPnUDek5dM846A bundle exec ruby pongbot.rb