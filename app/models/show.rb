class Show < ActiveRecord::Base
  has_many :actors
  has_many :characters
  has_many :genre
  belongs_to :network

  def actors_list
    self.actors collect do |a|
      a.full_name
    end
  end
end
