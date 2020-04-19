class VideoesController < ApplicationController
  def index
    get_data("手洗い")
  end
  
  
  def get_data(keyword)
    require 'youtube.rb'#先ほど上で準備したファイルを呼ぶ
    opts = Trollop::options do
      opt :q, 'Search term', :type => String, :default => "手洗い"
      opt :max_results, 'Max results', :type => :int, :default => 2
      opt :order, 'order', :type => String, :default => 'date'
      opt :regionCode, 'region', :type => String, :default => 'JP'
    end
  
    client, youtube = get_service
  
    begin
  
      search_response = client.execute!(
        :api_method => youtube.search.list,
        :parameters => {
          :part => 'snippet',
          :q => opts[:q],
          :maxResults => opts[:max_results],
          :order => opts[:order],
          :regionCode => opts[:regionCode]
        }
      )
  
    @videoes = search_response.data.items#Jsonの中身が多かったので必要な情報のみ受けれるようにしています。
  
    rescue Google::APIClient::TransmissionError => e
      puts e.result.body
    end
  end
  
end
