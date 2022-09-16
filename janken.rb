#じゃんけん
def janken
  
  puts "最初はグー！じゃんけん..."
  puts "[0]グー [1]チョキ [2]パー [3]戦わない"
  
  player_hand = gets.to_i
  computer_hand = rand(0..2)
  jankens = ["グー","チョキ","パー","戦わない"]
  puts "ポン！\n---------------------"
  puts "あなたの手:#{jankens[player_hand]}\n相手の手:#{jankens[computer_hand]}"
  
  if player_hand == computer_hand
    puts "あいこ"
    return true
  elsif 
    player_hand == 0 && computer_hand == 1 ||
    player_hand == 1 && computer_hand == 2 ||
    player_hand == 2 && computer_hand == 0
    puts "あなたの勝ちです"
    @result_janken = "win"
    return false
  elsif
    player_hand == 0 && computer_hand == 2 ||
    player_hand == 1 && computer_hand == 0 ||
    player_hand == 2 && computer_hand == 1 
    puts "あなたの負けです"
    @result_janken = "lose"
    return false
  elsif 
    player_hand == 3
    puts "終了"
    exit
  else
    puts "0~3の数字を選んでください"
  end
end
  
next_game = true

#あっち向いてホイ！
def hoi
  puts "---------------------\nあっち向いて〜"
  directions = ["上","右","下","左"]
  computer_direction = rand(0..3)
  
  if @result_janken == "win"
    puts "指を差す方向の選択:[0]上[1]右[2]下[3]左"
    player_direction = gets.to_i
    puts "ホイ！\n---------------------"
    puts "自分が指した方向:#{directions[player_direction]}\n相手が向いた方向:#{directions[computer_direction]}"
    
    if player_direction == computer_direction
      puts "お見事！あなたの勝ちです"
      return false
    else
      puts "もう一回\n---------------------"
      return true
    end
  elsif @result_janken == "lose"
    puts "顔を向ける方向の選択：[0]上[1]右[2]下[3]左"
    player_direction = gets.to_i
    puts "ホイ！\n---------------------"
    puts"自分が向いた方向:#{directions[player_direction]}\n相手が指した方向:#{directions[computer_direction]}"
    
    if player_direction == computer_direction
      puts "残念、あなたの負けです"
      return false
    else
      puts "もう一回\n---------------------"
      return true
    end
  end
end

def main
  if janken == true
    return true
  elsif hoi == true
    return true
  else
    return false
  end
end

re_game = true
while re_game
  re_game = main
end
