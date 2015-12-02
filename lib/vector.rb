class Vector
  def initialize(array)
    @array = array
  end

  def maximum
    current_max = nil

    @array.each do |current_number|
      if current_max == nil || current_number > current_max
        current_max = current_number
      end
    end

   current_max
  end
end
