class DoorbellsController < ApplicationController
	def test
		blowerio = RestClient::Resource.new(ENV['BLOWERIO_URL'])
		blowerio['/messages'].post :to => '+16236287822', :message => 'Hello, this is working yo!'
		redirect_to root_url
	end
end
