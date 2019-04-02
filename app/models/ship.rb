class Ship
  attr_accessor :name, :type, :booty

  @@all = []

  def initialize(argument_hash)
    @name = argument_hash[:name]
    @type = argument_hash[:type]
    @booty = argument_hash[:booty]

    @@all << self
  end

  def self.clear
    @@all = []
  end
end
