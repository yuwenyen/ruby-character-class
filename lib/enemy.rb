# 敵 (Enemy) のふるまいを表すクラス
class Enemy
  attr_reader :name, :hp

  def initialize(name, hp)
    @name = name
    @hp = hp
  end

  def attack(damage)
    @hp = damage - 1
  end
  
  def dead?
    if @hp <= 0
      puts "スライム死んだ"
    else
      puts "スライムは勇者を倒した！"
    end
  end

end