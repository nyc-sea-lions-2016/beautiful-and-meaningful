class QuotesController < ApplicationController
	def new
	end
	def create
		@quote = Quote.new(quote_params)
		@quote.category_id = Category.find_by(name: "tweets").id

		@quote.save
		redirect_to @quote 
	end

	def show
		@client ||= Twitter::REST::Client.new do |config|
			config.consumer_key = ENV["CONSUMER_KEY"]
			config.consumer_secret = ENV["CONSUMER_SECRET"]
			config.access_token = ENV["ACCESS_TOKEN"]
			config.access_token_secret = ENV["ACCESS_SECRET"]
		end
		@quote = Quote.find(params[:id])
		@tweets = @client.user_timeline(params[:quote]).slice(0, 10)
	end

private
  def quote_params
    params.require(:quote).permit(:content)
  end

end
