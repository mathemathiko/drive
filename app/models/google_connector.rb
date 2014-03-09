require 'google/api_client'
require 'google/api_client/client_secrets'
require 'google/api_client/auth/installed_app'
require 'logger'

# class GoogleDriveConnector
class GoogleConnector
  API_VERSION = 'v2'

  attr_accessor :client

  def initialize
    @client = initialize_client
    prepare_log
  end

  private

  def initialize_client
    Google::APIClient.new(
      :application_name    => 'GoogleConnector',
      :application_version => '1.0.0'
    )
  end

  def prepare_log
    log_file = File.open 'drive.log', 'a+'
    log_file.sync = true

    logger = Logger.new(log_file)
    logger.level = Logger::DEBUG
  end
end
