Rails.application.routes.draw do
  root "sensor_status#index"
  get "current_temp" => "sensor_status#current_temp"
  get "current_hum" => "sensor_status#current_hum"
  get "current_bright" => "sensor_status#current_bright"
end
