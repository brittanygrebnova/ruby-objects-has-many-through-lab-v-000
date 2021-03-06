class Doctor
  
  require 'pry'
  
  attr_accessor :name, :patients, :appointments
  
  def initialize(name)
    @name = name
    @appointments = []
  end
  
  def appointments
    @appointments
  end
  
  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end
  
  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end
  
  
end