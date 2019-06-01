def hand_score(hand)
    card = {
        "A" => 4,
        "K" => 3,
        "Q" => 2,
        "J" => 1,
    }
    total = 0
    hand.each_char { |char| total += card[char.upcase]}
    return total
end
  
  puts hand_score("AQAJ") #=> 11
  puts hand_score("jJka") #=> 9