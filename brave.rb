require './character.rb'

class Brave < Character

    def attack(monster)
        puts "勇者の攻撃！"
        damage = @offense - monster.defense
        monster.hp -= damage
        monster.hp = 0 if monster.hp <= 0

        puts <<~TEXT
        モンスターは#{damage}のダメージを受けた！
        モンスターの残りの体力は#{monster.hp}だ！

        TEXT
    end

end