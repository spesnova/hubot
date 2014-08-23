require "dotenv"

Dotenv.load

Lita.configure do |config|
  #
  # Naming
  #
  config.robot.name         = "hubot"
  config.robot.mention_name = "hubot"
  config.robot.alias        = nil

  #
  # Locale
  #
  config.robot.locale = :ja

  #
  # Log Level
  #   :debug, :info, :warn, :error, :fatal
  #
  config.robot.log_level = :info

  # An array of user IDs that are considered administrators. These users
  # the ability to add and remove other users from authorization groups.
  # What is considered a user ID will change depending on which adapter you use.
  # config.robot.admins = ["1", "2"]

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  config.robot.adapter = :shell

  ## Example: Set options for the chosen adapter.
  # config.adapter.username = "myname"
  # config.adapter.password = "secret"

  #
  # Redis Connection
  #
  config.redis.host = ENV["LITA_REDIS_HOST"]
  config.redis.port = ENV["LITA_REDIS_PORT"]

  ## Example: Set configuration for any loaded handlers. See the handler's
  ## documentation for options.
  # config.handlers.some_handler.some_config_key = "value"
end
