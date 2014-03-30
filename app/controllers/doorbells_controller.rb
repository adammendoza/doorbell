class DoorbellsController < ApplicationController
	def test
		User.where(:contact => true).each do |u|
			num = u.number
			msg = u.msg
			blowerio = RestClient::Resource.new(ENV['BLOWERIO_URL'])
			blowerio['/messages'].post :to => "+1#{num}", :message => "#{msg}"
		end
		redirect_to root_url
	end
end
