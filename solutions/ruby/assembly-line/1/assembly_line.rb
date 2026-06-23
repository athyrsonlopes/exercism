class AssemblyLine
  CARS_PER_HOUR = 221

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    base_rate = CARS_PER_HOUR * @speed
    
    if @speed == 0 
      rate = 0
    elsif @speed >= 1 && @speed <= 4
      rate = base_rate
    elsif @speed >= 5 && @speed <= 8
      rate = base_rate * 0.9
    elsif @speed == 9 
      rate = base_rate * 0.8
    elsif @speed == 10
      rate = base_rate * 0.77
    end
    rate.to_f
  end

  def working_items_per_minute
    rate = production_rate_per_hour / 60
    rate.to_i
  end
end
