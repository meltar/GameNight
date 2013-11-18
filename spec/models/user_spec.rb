require 'spec_helper'

describe User do
	subject(:user) { described_class.new(name: "First Last", email: "test@example.com") }

	describe 'validations' do
		it 'should be valid with a name and email' do
			expect(user).to be_valid
		end

		it 'should not be valid without a name' do
			user.name = " "
			expect(user).to_not be_valid
		end

		it 'should not be valid without an email' do
			user.email = " "
			expect(user).to_not be_valid
		end
	end
end
