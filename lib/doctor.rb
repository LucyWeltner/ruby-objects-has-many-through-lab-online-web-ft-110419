class Doctor 
  attr_accessor :name 
  @@all_doctors = []
  def initialize(name)
    @name = name 
    @@all_doctors << self 
  end 
  
  def new_appointment(patient, date)
    Appointment.new(self, patient, date)
  end
  
  def appointments 
    Appointment.all.select{|appt| appt.doctor == self}
  end
  
  def self.all 
    @@all_doctors
  end 
end
  