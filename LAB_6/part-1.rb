def row_sum(accuracy)
  number_of_steps = 0
  sum = 0
  k = 1
  while 1.0 / Math.gamma(k) >= accuracy
    number_of_steps += 1
    sum += 1.0 / Math.gamma(k)
    k += 1
  end

  [sum, number_of_steps]
end

p row_sum(10**-4) # при изменении точности число операций изменяется на количество порядок
