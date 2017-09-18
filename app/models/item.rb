class Item < ActiveRecord::Base
    belongs_to :list
    
    validates :itemdetail, length: { minimum: 5 }, presence: true
    
end
