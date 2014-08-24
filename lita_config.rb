require "dotenv"

Dotenv.load

Lita.configure do |config|
  #
  # Naming
  #
  config.robot.name         = "hubot"
  config.robot.mention_name = "@hubot"
  config.robot.alias        = nil

  #
  # Locale
  #
  config.robot.locale = :ja

  #
  # Log Level
  #   :debug, :info, :warn, :error, :fatal
  #
  config.robot.log_level = :debug

  # An array of user IDs that are considered administrators. These users
  # the ability to add and remove other users from authorization groups.
  # What is considered a user ID will change depending on which adapter you use.
  # config.robot.admins = ["1", "2"]

  #
  # Http router
  #
  config.http.port = ENV["PORT"] || 8080

  #
  # Adapter
  #   Shell Adapter Configuration
  config.robot.adapter = :shell
  #   Slack Adapter Configuration
  #config.robot.adapter          = :slack
  #config.adapter.incoming_token = ENV["LITA_SLACK_INCOMING_TOKEN"]
  #config.adapter.incoming_url   = ENV["LITA_SLACK_INCOMING_URL"]
  #config.adapter.team_domain    = ENV["LITA_SLACK_TEAM_DOMAIN"]
  #config.adapter.username       = "hubot"

  #
  # Redis Connection
  #
  config.redis.host = ENV["LITA_REDIS_HOST"]
  config.redis.port = ENV["LITA_REDIS_PORT"]
  #config.redis.url   = ENV["LITA_REDIS_URL"]

  #
  # Handler
  #   Slack Handler
  config.handlers.slack_handler.webhook_token    = ENV["LITA_SLACK_OUTGOING_TOKEN"]
  config.handlers.slack_handler.team_domain      = ENV["LITA_SLACK_TEAM_DOMAIN"]
  config.handlers.slack_handler.ignore_user_name = ENV["LITA_SLACK_IGNORE_USERNAME"]
  #   Datadog
  config.handlers.datadog.api_key         = ENV["LITA_DATADOG_API_KEY"]
  config.handlers.datadog.application_key = ENV["LITA_DATADOG_APPLICATION_KEY"]
  #   Giphy
  config.handlers.giphy.api_key = ENV["LITA_GIPHY_API_KEY"]
end
