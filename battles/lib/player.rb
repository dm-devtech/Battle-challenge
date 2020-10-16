class Player
  attr_reader :name
  attr_accessor :hp
  HP = 100

  def initialize(name, hp = HP)
    @name = name
    @hp = hp
  end

  def player_attacked
    @hp -= 10
  end

end
