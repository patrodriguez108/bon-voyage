class ContactMailer < ApplicationMailer
	default from: "akoay.bonvoyage108@gmail.com"

	def contact_bon_voyage(client)
		@client = client

		mail(to: "akoay.bonvoyage108@gmail.com", subject: "#{@client[:name]} has Contacted You")
	end
end