class PagesController < ApplicationController
	def about
	end

	def contact
	end

	def send_contact
		@client = params[:contact]

		ContactMailer.contact_bon_voyage(@client)

		redirect_to contact_path
	end
end