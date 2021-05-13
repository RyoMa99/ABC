puts [*1..gets.to_i].inject(1){|sum,item| (item * sum) % (10 ** 9 + 7) }
