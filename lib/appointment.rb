class Appointment 
  attr_accessor :doctor, :patient, :date 
  @@all_appts = []
  
  def initialize(doctor, patient, date)
    @doctor = doctor 
    @patient = patient 
    @date = date 
    @all_appts << self 
  end 
  
  def self.all 
    @@all_appts 
  end 
end