class CameraRollsController < ApplicationController
  # GET /camera_rolls
  # GET /camera_rolls.json
  def index
    @camera_rolls = CameraRoll.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @camera_rolls }
    end
  end

  # GET /camera_rolls/1
  # GET /camera_rolls/1.json
  def show
    @camera_roll = CameraRoll.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @camera_roll }
    end
  end

  # GET /camera_rolls/new
  # GET /camera_rolls/new.json
  def new
    @camera_roll = CameraRoll.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @camera_roll }
    end
  end

  # GET /camera_rolls/1/edit
  def edit
    @camera_roll = CameraRoll.find(params[:id])
  end

  # POST /camera_rolls
  # POST /camera_rolls.json
  def create
    @camera_roll = CameraRoll.new(params[:camera_roll])

    respond_to do |format|
      if @camera_roll.save
        format.html { redirect_to @camera_roll, notice: 'Camera roll was successfully created.' }
        format.json { render json: @camera_roll, status: :created, location: @camera_roll }
      else
        format.html { render action: "new" }
        format.json { render json: @camera_roll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /camera_rolls/1
  # PUT /camera_rolls/1.json
  def update
    @camera_roll = CameraRoll.find(params[:id])

    respond_to do |format|
      if @camera_roll.update_attributes(params[:camera_roll])
        format.html { redirect_to @camera_roll, notice: 'Camera roll was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @camera_roll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /camera_rolls/1
  # DELETE /camera_rolls/1.json
  def destroy
    @camera_roll = CameraRoll.find(params[:id])
    @camera_roll.destroy

    respond_to do |format|
      format.html { redirect_to camera_rolls_url }
      format.json { head :ok }
    end
  end
end
