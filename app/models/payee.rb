class Payee < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2, maximum: 30 },
            uniqueness: true
  validates :category, presence: true
  
  CATEGORY_OPTIONS = ['Utilities', 'Insurance', 'Mortgage', 'Entertainment', 'Communication', 'Food & Grocery',
                      'Personal Care', 'Healthcare', 'Investment/Savings']
  validates_inclusion_of :category, in: CATEGORY_OPTIONS                       
end
