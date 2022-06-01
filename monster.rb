class Monster

  attr_accessor :name
  attr_accessor :hitpoint
  attr_accessor :attack_point
  
  def initialize(name, hitpoint, attack_point)
    @name = name
    @hitpoint = hitpoint
    @attack_point = attack_point
  end

  def to_s
    if @hitpoint > 0
      "#{@name}[#{@hitpoint}]"
    else
      "#{@name}[X]"
    end
  end

  def attack1(monster)
    monster.take_damage(@attack_point)
    take_damage(0.5 * monster.attack_point)

    puts "Player 1's #{@name} attacks enemy's #{monster.name}, deals #{@attack_point.to_f} damage and takes #{0.5 * monster.attack_point} damage"
  end

  def attack2(monster)
    monster.take_damage(@attack_point)
    take_damage(0.5 * monster.attack_point)

    puts "Player 2's #{@name} attacks enemy's #{monster.name}, deals #{@attack_point.to_f} damage and takes #{0.5 * monster.attack_point} damage"
  end

  def take_damage(amount)
    @hitpoint -= amount
  end
end