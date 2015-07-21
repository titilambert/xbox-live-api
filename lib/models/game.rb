class Game
  class Type
    XBOX_360 = '360'
    XBOX_ONE = '720'
  end

  attr_reader :name, :id, :last_unlock_time, :platform, :current_achievements,
              :current_gamerscore, :total_gamerscore

  def initialize(name: nil, id: nil, last_unlock_time: nil, platform: nil, current_achievements: nil,
                 current_gamerscore: nil, total_gamerscore: nil)
    @name = name
    @id = id
    @last_unlock_time = last_unlock_time
    @platform = platform
    @current_achievements = current_achievements
    @current_gamerscore = current_gamerscore
    @total_gamerscore = total_gamerscore
  end

  def ==(o)
    o.class == self.class && o.state == state
  end

  def hash
    state.hash
  end

  def state
    [@name, @id, @last_unlock_time, @platform, @current_achievements,
     @current_gamerscore, @total_gamerscore]
  end
end