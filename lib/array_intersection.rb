# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  return [] if array1.nil? || array2.nil? || array1.empty? || array2.empty?

  length1 = array1.length
  length2 = array2.length



    hh = {}
    array1.each do |num|
      hh[num] = 0
    end

    intersect = []
    array2.each do |num|
      intersect << num if hh[num]
    end


  return intersect

end
