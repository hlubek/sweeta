class Sweet < ActiveRecord::Base
  belongs_to :user

  scope :recent, :order => 'created_at DESC', :limit => 20
end
