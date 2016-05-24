class SensorStatusController < ApplicationController
  def index
  end

  def current_temp
    render :json => {
      :current_temperature => [*1..40].sample,
      :average_temperature => [*1..40].sample,
      :highest_temperature => [*1..40].sample,
      :lowest_temperature => [*1..40].sample,
    }
  end

  def current_hum
    render :json => {
      :current_humidity => [*1..100].sample,
      :average_humidity => [*1..100].sample,
      :highest_humidity => [*1..100].sample,
      :lowest_humidity => [*1..100].sample,
    }
  end

  def current_bright
    render :json => {
      :current_brightness => [*1..1000].sample,
    }
  end
end
