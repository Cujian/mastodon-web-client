class SitesController < ApplicationController
  def index
    client = Mastodon::REST::Client.new(
      base_url: ENV["CUJIAN_HOST"],
      bearer_token: ENV["CUJIAN_ACCESS_TOKEN"]
    )
    @public_timeline = client.public_timeline
  end
end
