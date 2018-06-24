json.id @user.id
json.name @user.name
json.email @user.email

json.cars do 
 json.array! @user.cars, partial: "api/cars/car", as: :car  
end