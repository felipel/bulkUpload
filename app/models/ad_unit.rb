include Validations #any custom validations go into this module

class AdUnit < ActiveRecord::Base

	has_many :adUnitSizes

	validates_uniqueness_of :name
	validates_length_of :name, :length => 1..255
	validates_length_of :desc, :length => 0..65535
	validate :target_window, :inclusion => %w(TOP BLANK)
	validate :explicitlyTargeted, :inclusion => %w(true false)
	
	
end
