class BonusDrink
  BONUS_BOTTLES = 3

  def self.total_count_for(amount)
    empty_bottles = amount
    total_bottles = amount

    while empty_bottles >= BONUS_BOTTLES do
      new_bottles = empty_bottles / BONUS_BOTTLES
      total_bottles += new_bottles
      empty_bottles = empty_bottles % BONUS_BOTTLES + new_bottles
    end

    total_bottles
  end
end
