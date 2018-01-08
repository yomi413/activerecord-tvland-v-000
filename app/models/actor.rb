class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name}" + " #{self.last_name}"
  end

  def list_roles
    # binding.pry
    # self.characaters.collect {|character| character.name} - self.shows.collect {|show| show.name}
    # "#{self.characters} - #{self.shows}"
    # binding.pry
    "#{character} - #{show}"
  end

  def character
    self.characaters.collect {|character| character.name}
  end

  def show
    self.shows.collect {|show| show.name}
  end

end
