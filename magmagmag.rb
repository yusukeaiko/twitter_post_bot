# coding: utf-8
require('twitter')
require('yaml')
require(File.expand_path('../messages.rb', __FILE__))

tw_config = YAML.load_file(File.expand_path('../twitter.yml', __FILE__))
twitter = Twitter::REST::Client.new {|config|
  config.consumer_key        = tw_config['config']['consumer_key']
  config.consumer_secret     = tw_config['config']['consumer_secret']
  config.access_token        = tw_config['config']['access_token']
  config.access_token_secret = tw_config['config']['access_token_secret']
}

msg   = dekigoto
index = [*0..msg.count].sample
twitter.update(msg[index]) if msg[index].size <= 140
