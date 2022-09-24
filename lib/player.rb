# frozen_string_literal: false

# Player class
class Player
  attr_accessor :name, :avatar, :id, :unique_counter

  @@unique_counter = 0

  def initialize(name = 'unknown', avatar = '')
    @name = name
    @avatar = avatar
    @id = @@unique_counter
    @@unique_counter += 1
  end
end
