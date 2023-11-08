class FilterObscenity

	def perform(post)
		# post = Post.find_by(id: post_id)
		post.title = sanitize(post.title)
		post.body = sanitize(post.body)
		post.save!
	end

	private

	BLACKLIST = {
		"poop" => "dookie",
		"butt" => "buttom",
		"python" => "ruby"
	}

	def sanitize(str)
		BLACKLIST.each do |bad, good|
			str.gsub!(bad, good)
		end

		str
	end
end