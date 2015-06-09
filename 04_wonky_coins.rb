def wonky_coins(n)
  all_my_coins = []
  all_my_coins << n
  all_my_zero_coins = []

  until all_my_coins.length == 0
    all_my_coins.each do |coin|
      if coin == 0
        all_my_zero_coins << coin
      end
    end
    
    all_my_coins.delete(0)
    my_current_coin_with_value_greater_than_0 = all_my_coins.first
    # this 'if' statement is change machine...
    if my_current_coin_with_value_greater_than_0
      all_my_coins << my_current_coin_with_value_greater_than_0 / 2
      all_my_coins << my_current_coin_with_value_greater_than_0 / 3
      all_my_coins << my_current_coin_with_value_greater_than_0 / 4
      all_my_coins.slice!(0)
    end
  end

  return all_my_zero_coins.length
end
