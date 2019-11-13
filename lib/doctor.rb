class Doctor 
  attr_accessor :name 
  @@all_doctors = []
  def initialize(name)
    @name = name 
    @@all_doctors << self 
  end 
  
  def new_appointment(patient, date)
    Appointment.new(date, self, patient)
  end
  
  def appointments 
    appt_array = Appointment.all.select{|appt| appt.doctor == self}
    appt_array.flatten
  end
  
  def patients 
    appointments.map{|appt| appt.patient}
  end
  
  def self.all 
    @@all_doctors
  end 
end
  