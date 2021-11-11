class Passenger
  attr_reader :name,
              :age,
              :can_drive

  def initialize(info)
    @name = info['name']
    @age = info['age']
    @can_drive = false
  end

  def adult?
    @age >= 18
  end

  def driver?
    @can_drive
  end

  def drive
    @can_drive = true
  end
end
