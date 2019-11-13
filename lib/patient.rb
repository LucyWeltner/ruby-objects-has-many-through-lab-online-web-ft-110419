class Patient 
  attr_accessor :name 
  @@all_patients = []
  
  def initialize(name)
    @name = name 
    @@all_patients << self 
  end 
  
  def make_appt(doctor, date)
    Appointment.new(doctor, self, date)
  end 
  
  def my_appts
    Appoitment.all.select 
end 