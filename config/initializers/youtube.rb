require 'rubygems'
require 'google/apis/youtube_v3'


API_KEY = ENV['YOUTUBE_DATA_API_KEY']
YOUTUBE_API_SERVICE_NAME = 'youtube'
YOUTUBE_API_VERSION = 'v3'

def get_service
  client = Google::APIClient.new(
    :key => DEVELOPER_KEY,
    :authorization => nil,
    :application_name => $PROGRAM_NAME,
    :application_version => '1.0.0'
  )
  youtube = client.discovered_api(YOUTUBE_API_SERVICE_NAME, YOUTUBE_API_VERSION)

  return client, youtube
end




# def get_youtube_service

#   service = Google::Apis::YoutubeV3::YouTubeService.new
#   service.key = API_KEY
#   return service
# end