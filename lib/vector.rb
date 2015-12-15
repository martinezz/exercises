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

  def minimum
    current_min = nil
    @array.each do |current_number|
      if current_min == nil || current_number < current_min
        current_min = current_number
      end
    end
    current_min
  end

  # [1,2]
  # []
  def total
    #@array.reduce(:+)
    current_total = 0
    @array.each do |current_number|
      current_total = current_number + current_total
    end
    current_total
  end

  def select_odd
    @array.select(&:odd?)
    # current_odd = []
    # @array.each do |current_number|
    #   if current_number.odd?
    #     current_odd << current_number
    #   end
    # end
    # current_odd
  end

  def select_even
    current_even = []
    @array.each do |current_number|
      if current_number.even?
        current_even << current_number
      end
    end
    current_even
  end

  def add(number)
    @array.map do |current_number|
      current_number + number
    end
  end

  def mul
    @array.map do |current_number|
      current_number * current_number
    end
  end

  def to_s
    "Values: " + @array.join(", ")
  end

  def pop
    @array.slice!(-1)
  end
end