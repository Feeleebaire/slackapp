require 'slack-ruby-client'

Slack.configure do |config|
  config.token = ENV['SLACK_API_TOKEN']
  fail 'Missing ENV[SLACK_API_TOKEN]!' unless config.token

end


client = Slack::Web::Client.new

client.auth_test

client.chat_postMessage(channel: '#general', text: 'ça marche', as_user: true)
