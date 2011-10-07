class TakesController < ApplicationController
  # GET /takes
  # GET /takes.json
  def index
    @takes = Take.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @takes }
    end
  end

  # GET /takes/1
  # GET /takes/1.json
  def show
    @take = Take.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @take }
    end
  end

  # GET /takes/new
  # GET /takes/new.json
  def new
    @take = Take.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @take }
    end
  end

  # GET /takes/1/edit
  def edit
    @take = Take.find(params[:id])
  end

  # POST /takes
  # POST /takes.json
  def create
    @take = Take.new(params[:take])

    respond_to do |format|
      if @take.save
        format.html { redirect_to @take, notice: 'Take was successfully created.' }
        format.json { render json: @take, status: :created, location: @take }
      else
        format.html { render action: "new" }
        format.json { render json: @take.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /takes/1
  # PUT /takes/1.json
  def update
    @take = Take.find(params[:id])

    respond_to do |format|
      if @take.update_attributes(params[:take])
        format.html { redirect_to @take, notice: 'Take was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @take.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /takes/1
  # DELETE /takes/1.json
  def destroy
    @take = Take.find(params[:id])
    @take.destroy

    respond_to do |format|
      format.html { redirect_to takes_url }
      format.json { head :ok }
    end
  end
end
