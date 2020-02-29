require './character.rb'

class Monster < Character
    def attack(brave)
        puts "モンスターの攻撃！"
        damage = @offense - brave.defense
        brave.hp -= damage
        brave.hp = 0 if brave.hp < 0
        puts "勇者は#{damage}のダメージを受けてしまった！"
        puts "勇者の残りの体力は#{brave.hp}だ！"
    end
end