a = (1..16).to_a
slice_size = 4

out = []
slice_size.times { out << [] }
slice_number = 0

a.each do |i|
  slice_size.times do |n|
    if i-1 < slice_size*(n+1)
      out[n] << i
      break
    end
  end
end

# out.reject!(&:empty?)
out.each {|a| p a}

puts '*************************************'

a = (1..16).to_a

until a.empty?
  p a.shift(slice_size)
end

puts '*************************************'

a = (1..16).to_a

a.each_slice(4) do |s|
  p s
end
