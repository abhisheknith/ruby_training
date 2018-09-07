require 'rails_helper'
require_relative '../app/controllers/authors_controller'

RSpec.describe AuthorsController do
	describe '#index' do
		it 'Returns all authors' do
			expect(AuthorsController.new.index.size).to eq(0)
		end
	end
end