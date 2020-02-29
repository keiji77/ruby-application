require './brave.rb'
require './monster.rb'

brave = Brave.new(hp: 500, offense: 500, defense: 200)
monster = Monster.new(hp: 400, offense: 400, defense: 200)


loop do 
    brave.attack(monster)
    if monster.hp <= 0
        puts "モンスターは倒れた"
        puts "勇者の勝利だ！"
        break
    end
    
    monster.attack(brave)
    if brave.hp <= 0
        puts "勇者は倒れてしまった"
        puts "勇者は急いで病院に行った"
        break
    end
end