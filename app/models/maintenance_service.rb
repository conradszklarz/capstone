class MaintenanceService < ApplicationRecord
  belongs_to :service
  belongs_to :maintenance_event
end

def every_4_months
  puts "Time to change your oil and oil filter. Also, please remember to blow out engine air filter, cabin air filter, top off radiator and radiator reservoir, top off brake fluid tank, grease all grease joints, check tire pressure, and check for any leaks under the car."
end

def every_7_months
  puts "Time to balance and rotate your tires"
end

def every_30_months
  puts "It's been 2 1/2 years or 30 months since your engine air filter, cabin air filter, spark plugs, and spark plug wires have been changed. Make sure to contact your local dealer or look through your owners manual to find the proper spark plug gap and adjust accordingly."
end

def every_60_months
  puts "It's been 5 years or 60 months since your serpentine belt has been changed. Also, since you have your belt off be sure to check all your wheels, pulleys, and belt tensioner(s) spin freely. If any do not, change them now."
end  

def every_100_months
  puts "It's been 8 years and 4 months or 100 months. There is some work to be done. At this interval you should have your timing belt replaced, transmission fluid replaced, and also change out your shocks/struts."
end

def every_48_months
  puts "It's been 4 years or 48 months since you had your radiator and vacuum hoses replaced."
end

def every_12_months
  puts "It's been a year or 12 months, time to get a wheel alignment to make sure everything is straight and so your tires don't wear quicker than normal. This should also be done after purchasing new tires."
end

def every_6_months
  puts "6 months have passed since your windshield wipers have been replaced.  To ensure you always have good visibility in all types of weather, change those wipers! Also, make sure to fill your windshield wiper fluid reservior."
end

def every_50_months
  puts "4 years and 2 months or 50 months have passed since your tires were changed. To ensure you have proper traction in all types of weather please change them!"
end





















