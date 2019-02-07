class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    arr = str.split(" ")
  
    i = 0
    length = []
    arr.each{ |a| length << a.length}
    loop do
      if length[i].to_i > 4
        ifCapital = arr[i][0] <=> arr[i][0].downcase
        endPunc = arr[i][arr[i].length - 1]
        puts endPunc
        if ifCapital != 0
          arr[i] = "Marklar"
        else
          arr[i] = "marklar"
        end
        if endPunc !~ /[A-Za-z]/
          arr[i] += endPunc
        end
      end
      i += 1
      if i == arr.length
        break       
      end
    end
    arr.join(" ")
  end  
  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    evenFibos = []
    lastFibo = 1
    placeholder = 1
    currentFibo = 1 #Starts on second in sequence
    i = 2
    loop do
      placeholder = currentFibo
      currentFibo = currentFibo + lastFibo
      lastFibo = placeholder
      if currentFibo % 2 == 0
        evenFibos.push(currentFibo)
      end
      i += 1
      if i == nth
        break
      end
    end
    j = 0
    sum = 0
    loop do
      sum += evenFibos[j]
      j += 1
      if j == evenFibos.length
        break
      end
    end
    sum
  end

end
