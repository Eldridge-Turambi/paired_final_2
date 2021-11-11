class Vehicle
  attr_reader :year,
              :make,
              :model,
              :passengers

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @too_fast = false
    @passengers = Array.new(0)
  end

  def speeding?
    @too_fast
  end

  def speed
    @too_fast = true
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def num_adults
    @passengers.count do |passenger|
      passenger.age >= 18
    end
  end
end
