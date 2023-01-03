require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe 'Validations' do
    it 'should contain an email' do 
      user = User.new("email" => 'test@test.ca')
      p user
      expect(user.email).to be_present
    end
    it 'should not allow mismatched passwords' do 
      user = User.new("email" => 'test@test.ca', "password" => "abc", "password_confirmation" => "123").save
      p user
      expect(user).to be_falsey
    end
    it 'should allow matched passwords' do 
      user = User.new("email" => 'test@test.ca', "password" => "abc", "password_confirmation" => "abc").save
      p user
      expect(user).to be_truthy
    end

  end
end
