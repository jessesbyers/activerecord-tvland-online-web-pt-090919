class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.characters.map {|char| "#{char.actor.first_name} #{char.actor.last_name}"}
  end
end
