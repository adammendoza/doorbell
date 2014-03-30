class DoorbellsController < ApplicationController
	def test
		number = params['num']
		message = params['msg']
		blowerio = RestClient::Resource.new(ENV['BLOWERIO_URL'])
		blowerio['/messages'].post :to => "+1#{number}", :message => "#{message}"
		redirect_to root_url
	end
end
