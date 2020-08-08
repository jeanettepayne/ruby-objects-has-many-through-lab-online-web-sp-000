class Doctor
  attr_reader :name, :patient
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end
  
  def patients 
    self.appointments.map {|appt| appt.patient}
  end
  
  def patient=(patient)
    self.patient = @patient
  end
  
end