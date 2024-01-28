def stock_picker(array)
  buyDay = 0               # first index of the array
  sellDay = array.length   # last index of the array
  buyDayPrice = array[0]   # first value of the array
  sellDayPrice = array[-1] # last value of the array
  count = 0

  while count != array.length # while entire array is not read

    if array[count] < buyDayPrice && count < sellDay # if the new value is less than the buyDayPrice and if the purchase occurs before the sale
      buyDayPrice = array[count]
      buyDay = count

    elsif array[count] > sellDayPrice && count > buyDay # if the new values is greater than the sellDayPrice and if the sell occurs after the sale
      sellDayPrice = array[count]
      sellDay = count
    end

    count += 1
  end

  puts buyDay
  puts sellDay
end

price = 1
arrayPrices = Array.new()
while price != 0
  print "Enter the price [0 to finish]: "
  price = gets.chomp.to_f

  if price == 0.0
    break

  else
    arrayPrices.push(price)
  end
end

stock_picker(arrayPrices)
