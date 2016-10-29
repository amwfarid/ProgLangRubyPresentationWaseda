require 'net/http'

class ReviewBot

	def send(rating,comment)

		rating = rating.to_i

		if rating < 1 or rating > 5
			puts 'Please enter a rating between 1 and 5'
			return
		end

		if comment.empty?
			puts 'Please enter a comment'
			return
		end

		uri = URI('https://script.google.com/macros/s/AKfycbzvRRDmZqm1YIyvgx4Ds9Wu3tQiZuksGdDZqmYwzTZmoE-I4ik/exec')
		params = { :r => rating, :t => comment }
		uri.query = URI.encode_www_form(params)
		res = Net::HTTP.get_response(uri)
		#Net::HTTP.get(uri)

	end

end

r = ReviewBot.new
rating = 1 #Insert your rating here
comment = '' #Insert your comment here
r.send(rating,comment)

# You can view results here -> https://docs.google.com/spreadsheets/d/12psguP4slrUK1BW-PXSPZa4sYEOxksVDrZudSXjqLw8/edit?usp=sharing
