class Doctor
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
  end
  
  def appointments
    Appointment.all.map {|appt| appt.doctor}
  end
  
end