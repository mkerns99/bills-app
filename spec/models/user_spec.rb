require 'rails_helper'

describe User do
  let(:user) { build(:user) }
  
  it 'should be valid' do
	  expect(user).to be_valid
  end
  
  it 'should have a valid email address' do
  	valid_emails = %w[valid@email.com TT_tt@eee.org first.last@eee.au]
  	valid_emails.each do |ve|
  		user.email = ve
  		expect(user).to be_valid
		end
	end
end
