class Patient 
  attr_accessor :name 
  @@all_patients = []
  
  def initialize(name)
    @name = name 
    @@all_patients << self 
  end 
  
  def new_appointment(doctor, date)
    Appointment.new(date, doctor, self)
  end 
  
  def appointments
    Appointment.all.map{|appt| appt.patient == self}
  end 
  
  def doctors 
    appointments.map{|appt| appt.doctor}
  end
  
  def self.all 
    @@all_patients 
  end
end 