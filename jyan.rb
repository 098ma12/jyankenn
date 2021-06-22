def janken
    puts "[0]:グー\n[1]:チョキ\n[2]:パー"
    player_hand = gets.to_i

    program_hand = rand(3)

    jankens = ["グー", "チョキ", "パー"]

    puts "あなたの手:#{jankens[player_hand]}, わたしの手:#{jankens[program_hand]}"

    if player_hand == program_hand
      puts "あいこで"
      return true
    elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
      puts "あなたの勝ちです"
      return false
    else
      puts "あなたの負けです"
      return false
    end
end 

  next_game = true

  puts "最初はグー、じゃんけん..."

  while next_game do
    next_game = janken
  end

def hoi
    puts "[0]:上\n[1]:右\n[2]:下\n[3]:左"
    player_direction = gets.to_i
    program_direction = rand(4)
    hois = ["上", "右", "下", "左"]

    puts "あなたの手:#{hois[player_direction]},私の手:#{hois[program_direction]}"

    if player_direction == program_direction
        puts "あなたの勝ちです"
    else
        puts "あなたの負けです"
    end
end

next_hoi = true

puts "あっちむいてホイ…"

while next_hoi do
    next_hoi = hoi
end
