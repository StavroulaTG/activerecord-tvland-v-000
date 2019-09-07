class Show < ActiveRecord::Base
  has_many :actors
  has_many :characters
  has_many :genres
  belongs_to :network

  def actors_list
    self.actors collect do |a|
      "#{self.show_id} - #{self.network_id}"
    end
  end
end
