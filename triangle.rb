
def pascal (number_of_lines)

  # Instantiate first line as [1]:
  line = [1]

  # Crude attempt at formatting and printing first line: 
  print " " * (((number_of_lines - 2) * 4) - 2)
  puts line

  # Set new_line to an empty array: 
  new_line = []

    # Create a loop to iterate printing lines, one less than
    # the total number_of_lines to be printed, since the first 
    # is already defined and printed above: 
    (number_of_lines - 1).times do |j|
      
      # Pad the two ends of the line array with zeros so 
      # every calculation for the next line has two arguments: 
      line.unshift(0)
      line.push(0)

      # Create another loop that calculates each element.  
      # Calculate the ith element of the array by summing the ith 
      # element and the i+1th element from the previous line.
      # Repeat this calculation until you reach the next-to-last 
      # element of the previous line (the first of the two 
      # arguments for the sum). 
      ((line.length)-1).times do |i|
        new_line[i] =  line[i] + line[i+1]
      end

    # More crude formatting and printing:   
    print "   " * (number_of_lines - (j + 1))
    puts new_line.join("    ")
    
    # Set the line array equal to the new line just calculated: 
    line = new_line
    
    # Reset the new_line array to empty to prepare to
    # build the next line: 
    new_line = []
    end
end

pascal(10)

