require 'rails_helper'

describe Payee do
  let(:payee) { build(:payee) }
  
  it 'should be valid' do
    expect(payee).to be_valid
  end
  
  describe 'name' do
    it 'should be present' do
      payee.name = ''
      expect(payee).not_to be_valid
    end
    
    it 'should not be less than 2 chars' do
      payee.name = 'a'
      expect(payee).not_to be_valid
    end
    
    it 'should not be more than 30 chars' do
      payee.name = 'a' * 31
      expect(payee).not_to be_valid
    end
    
    it 'should be unique' do
      payee.save
      payee2 = Payee.create(name: "Netflix", category: "Something")
      expect(payee2).not_to be_valid
    end
  end
  
  describe 'category' do
    it 'should be present' do
      payee.category = ''
      expect(payee).not_to be_valid
    end
    
    it 'should be one of the valid choices' do
      payee.category = 'something else'
      expect(payee).not_to be_valid
    end
  end
end
