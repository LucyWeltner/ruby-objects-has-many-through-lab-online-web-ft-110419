class Patient 
  attr_accessor :name 
  @@all_patients = []
  
  def initialize(name)
    @name = name 
    @@all_patients << self 
  end 
  
  def make_appt(date, doctor)
    Appointment.new()
end 