# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  return [] if array1.nil? || array2.nil? || array1.empty? || array2.empty?

  if array1.length < array2.length
    return get_intersection(array1, array2)
  else
    return get_intersection(array2, array1)
  end
end

def get_intersection(shorter_array, longer_array)

  hh = {}
  shorter_array.each do |num|
    hh[num] = 0
  end

  intersect = []
  longer_array.each do |num|
    intersect << num if hh[num]
  end

  return intersect

end
