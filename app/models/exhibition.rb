class Exhibition < ApplicationRecord
	has_many :pictures, :dependent => :destroy

	accepts_nested_attributes_for :pictures, :reject_if => lambda { |t| t['picture'].nil? }
end