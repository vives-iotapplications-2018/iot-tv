class WelcomeController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @temperature = Temperature.new
        @temperatures = Temperature.all.reverse
    end
  
    def temperature
        @temperature = Temperature.create(temperature_params)
        redirect_to root_path
    end
  
    private
      def temperature_params
        params.require(:value).permit(:value)
      end
  end