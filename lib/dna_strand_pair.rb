class DnaStrandPair
  def initialize(strand_one, strand_two)
    @strand_one = strand_one
    @strand_two = strand_two
  end

  def split_string(one, two)
    @strand_one_array = one.split("")
    @strand_two_array = two.split("")
    unless @strand_one_array.length == @strand_two_array.length
      lop_off_longer_string
    end
  end

  def lop_off_longer_string
      if @strand_one_array.length > @strand_two_array.length
          @strand_one_array.delete_at(-1)
      else
          @strand_two_array.delete_at(-1)
      end
  end

  def hamming_distance
    split_string(@strand_one, @strand_two)
    count = 0
    @strand_one_array.each_with_index do |letter, index|
      puts "1st: #{letter}"
      puts "2nd: #{@strand_two_array[index]}"
      puts count
      count += 1 if letter != @strand_two_array[index]
    end
    count
  end





end
