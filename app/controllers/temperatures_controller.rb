require 'net/http'
require 'uri'
require 'json'


class TemperaturesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_temperature, only: [:show, :edit, :update, :destroy]

  # GET /temperatures
  # GET /temperatures.json
  def index
    @temperatures = Temperature.all
  end

  # GET /temperatures/1
  # GET /temperatures/1.json
  def show
  end

  # GET /temperatures/new
  def new
    @temperature = Temperature.new
  end

  # GET /temperatures/1/edit
  def edit
  end

  # POST /temperatures
  # POST /temperatures.json
  def create
    @temperature = Temperature.new(temperature_params)

    respond_to do |format|
      if @temperature.save
        # POST TO STT

        # post_uri = URI.parse(process.env.HTTP_STT_HTTP + "://" + process.env.HTTP_STT_HOST + ":" + process.env.HTTP_STT_PORT +  process.env.HTTP_STT_PATH)
        post_uri = URI.parse("http://localhost:4567/api")
        # puts ENV["HTTP_STT_HTTP"]

        header = {'Content-Type': 'application/json'}
        puts "_____________________________________"
        puts @temperature.to_json.to_s
        puts "_____________________________________"

        # Create the HTTP objects
        http = Net::HTTP.new(post_uri.host, post_uri.port)
        request = Net::HTTP::Post.new(post_uri.request_uri, header)
        request.body = @temperature.to_json.to_s
        puts "created HTTP Objects"
        
        # Send the request
        response = http.request(request)
        print "inspection of request: " ,request.inspect
        



        # Broadcast using websocket
        format.html { redirect_to @temperature, notice: 'Temperature was successfully created.' }
        format.json { render :show, status: :created, location: @temperature }
      else
        format.html { render :new }
        format.json { render json: @temperature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temperatures/1
  # PATCH/PUT /temperatures/1.json
  def update
    respond_to do |format|
      if @temperature.update(temperature_params)
        format.html { redirect_to @temperature, notice: 'Temperature was successfully updated.' }
        format.json { render :show, status: :ok, location: @temperature }
      else
        format.html { render :edit }
        format.json { render json: @temperature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temperatures/1
  # DELETE /temperatures/1.json
  def destroy
    @temperature.destroy
    respond_to do |format|
      format.html { redirect_to temperatures_url, notice: 'Temperature was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temperature
      @temperature = Temperature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def temperature_params
      params.require(:temperature).permit(:value, :unit, :Device_id)
    end
end
