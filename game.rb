class Character 
  attr_accessor :hp
  attr_accessor :damage
end

class Knight < Character
  def initialize
    @hp = 150
    @damage = 5
  end
end

class Dragon < Character
  def initialize
    @hp = 200
    @damage = 5
  end
end

class Game 
  attr_accessor :knight
  attr_accessor :dragon
  
  def initialize (knight, dragon)
    @knight = knight
    @dragon = dragon
    puts "hi #{knight.hp}"
    puts "hi #{dragon.hp}"
  end

  def combat
    while knight.hp > 0 && dragon.hp > 0
      knightattack = rand 1..30
      dragonattack = rand 1..25
      knight.hp = knight.hp-dragonattack
      dragon.hp = dragon.hp-knightattack
      puts "Knight HP left: #{knight.hp}"
      puts "Dragon HP left: #{dragon.hp}"
    end
  end
  
  def conditional
    if knight.hp <= 0 && dragon.hp <= 0
      tie
    elsif knight.hp <= 0 
      lose
    elsif dragon.hp <= 0
      win
    else
      combat
    end
  end

  def win
    return "The people cheer! You have defeated the dragon and bring it's scales home as a shield!"
  end

  def lose 
    return "You have died, the dragon has utterly destroyed you!"
  end
  
  def tie
    return "Alright! You both died!!!! Where did you learn to fight?"
  end
  
end

#knight=Knight.new
#knight.hp=150
#knight.damage=5
#
#dragon=Dragon.new
#dragon.hp=200
#dragon.damage=5
#
#
#game=Game.new(knight,dragon)
#game.combat
#game.conditional





