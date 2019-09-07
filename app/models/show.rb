class Show < ActiveRecord::Base
  has_many :actors
  has_many :characters
  has_many :genres
  belongs_to :network

  def actors_list
    self.actors collect do |a|
      "#{self.first_name} - #{{self.last_name}"
    end
  end
end
