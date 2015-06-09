def no_repeat?(year)
  year = year.to_s
  no_repeat = true
  year.each_char do |number|
    if year.count(number) > 1
      no_repeat = false
    end
  end
  return no_repeat
end

def no_repeats(year_start, year_end)
  non_repeat_years = []
  years = (year_start..year_end).to_a
  years.each do |year|
    if no_repeat?(year)
      non_repeat_years << year
    end
  end
  return non_repeat_years
end
