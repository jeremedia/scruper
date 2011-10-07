class StoryboardsController < ApplicationController
  # GET /storyboards
  # GET /storyboards.json
  def index
    @storyboards = Storyboard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @storyboards }
    end
  end

  # GET /storyboards/1
  # GET /storyboards/1.json
  def show
    @storyboard = Storyboard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @storyboard }
    end
  end

  # GET /storyboards/new
  # GET /storyboards/new.json
  def new
    @storyboard = Storyboard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @storyboard }
    end
  end

  # GET /storyboards/1/edit
  def edit
    @storyboard = Storyboard.find(params[:id])
  end

  # POST /storyboards
  # POST /storyboards.json
  def create
    @storyboard = Storyboard.new(params[:storyboard])

    respond_to do |format|
      if @storyboard.save
        format.html { redirect_to @storyboard, notice: 'Storyboard was successfully created.' }
        format.json { render json: @storyboard, status: :created, location: @storyboard }
      else
        format.html { render action: "new" }
        format.json { render json: @storyboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /storyboards/1
  # PUT /storyboards/1.json
  def update
    @storyboard = Storyboard.find(params[:id])

    respond_to do |format|
      if @storyboard.update_attributes(params[:storyboard])
        format.html { redirect_to @storyboard, notice: 'Storyboard was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @storyboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storyboards/1
  # DELETE /storyboards/1.json
  def destroy
    @storyboard = Storyboard.find(params[:id])
    @storyboard.destroy

    respond_to do |format|
      format.html { redirect_to storyboards_url }
      format.json { head :ok }
    end
  end
end
