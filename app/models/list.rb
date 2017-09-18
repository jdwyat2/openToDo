class List < ActiveRecord::Base
    belongs_to :user
    has_many :items, dependent: :destroy
    
    validates_presence_of :listname, on: [:create, :update]
    validates :permissions, inclusion: {
        in: %w(public private),
        message: '%{value} not valid. Must be public or private'
    }
    
    scope :publically_viewable, -> { where(permissions: 'public')}
    scope :privately_viewable, -> { where(permissions: 'private')}
    
    scope :visible_to, -> (user) {user ? all : publicaly_viewable }

end
