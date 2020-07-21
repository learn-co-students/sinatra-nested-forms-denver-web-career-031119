class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(argument_hash)
    @name = argument_hash[:name]
    @weight = argument_hash[:weight]
    @height = argument_hash[:height]

    @@all << self
  end

  def self.all
    @@all
  end
end
