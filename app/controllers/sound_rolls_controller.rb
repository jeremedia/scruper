class SoundRollsController < ApplicationController
  # GET /sound_rolls
  # GET /sound_rolls.json
  def index
    @sound_rolls = SoundRoll.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sound_rolls }
    end
  end

  # GET /sound_rolls/1
  # GET /sound_rolls/1.json
  def show
    @sound_roll = SoundRoll.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sound_roll }
    end
  end

  # GET /sound_rolls/new
  # GET /sound_rolls/new.json
  def new
    @sound_roll = SoundRoll.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sound_roll }
    end
  end

  # GET /sound_rolls/1/edit
  def edit
    @sound_roll = SoundRoll.find(params[:id])
  end

  # POST /sound_rolls
  # POST /sound_rolls.json
  def create
    @sound_roll = SoundRoll.new(params[:sound_roll])

    respond_to do |format|
      if @sound_roll.save
        format.html { redirect_to @sound_roll, notice: 'Sound roll was successfully created.' }
        format.json { render json: @sound_roll, status: :created, location: @sound_roll }
      else
        format.html { render action: "new" }
        format.json { render json: @sound_roll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sound_rolls/1
  # PUT /sound_rolls/1.json
  def update
    @sound_roll = SoundRoll.find(params[:id])

    respond_to do |format|
      if @sound_roll.update_attributes(params[:sound_roll])
        format.html { redirect_to @sound_roll, notice: 'Sound roll was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @sound_roll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sound_rolls/1
  # DELETE /sound_rolls/1.json
  def destroy
    @sound_roll = SoundRoll.find(params[:id])
    @sound_roll.destroy

    respond_to do |format|
      format.html { redirect_to sound_rolls_url }
      format.json { head :ok }
    end
  end
end
