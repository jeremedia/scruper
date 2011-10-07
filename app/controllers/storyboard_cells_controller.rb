class StoryboardCellsController < ApplicationController
  # GET /storyboard_cells
  # GET /storyboard_cells.json
  def index
    @storyboard_cells = StoryboardCell.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @storyboard_cells }
    end
  end

  # GET /storyboard_cells/1
  # GET /storyboard_cells/1.json
  def show
    @storyboard_cell = StoryboardCell.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @storyboard_cell }
    end
  end

  # GET /storyboard_cells/new
  # GET /storyboard_cells/new.json
  def new
    @storyboard_cell = StoryboardCell.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @storyboard_cell }
    end
  end

  # GET /storyboard_cells/1/edit
  def edit
    @storyboard_cell = StoryboardCell.find(params[:id])
  end

  # POST /storyboard_cells
  # POST /storyboard_cells.json
  def create
    @storyboard_cell = StoryboardCell.new(params[:storyboard_cell])

    respond_to do |format|
      if @storyboard_cell.save
        format.html { redirect_to @storyboard_cell, notice: 'Storyboard cell was successfully created.' }
        format.json { render json: @storyboard_cell, status: :created, location: @storyboard_cell }
      else
        format.html { render action: "new" }
        format.json { render json: @storyboard_cell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /storyboard_cells/1
  # PUT /storyboard_cells/1.json
  def update
    @storyboard_cell = StoryboardCell.find(params[:id])

    respond_to do |format|
      if @storyboard_cell.update_attributes(params[:storyboard_cell])
        format.html { redirect_to @storyboard_cell, notice: 'Storyboard cell was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @storyboard_cell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storyboard_cells/1
  # DELETE /storyboard_cells/1.json
  def destroy
    @storyboard_cell = StoryboardCell.find(params[:id])
    @storyboard_cell.destroy

    respond_to do |format|
      format.html { redirect_to storyboard_cells_url }
      format.json { head :ok }
    end
  end
end
