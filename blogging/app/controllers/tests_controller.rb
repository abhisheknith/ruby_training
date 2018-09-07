class TestsController < ApplicationController
	def welcome
		@posts = ""
		for post in Post.all
			@posts += "#{post.title} : #{post.body}"
		end
	end

	def about
	end
end