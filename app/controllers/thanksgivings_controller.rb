class ThanksgivingsController < ApplicationController
  # GET /thanksgivings
  # GET /thanksgivings.json
  def index
    @thanksgivings = Thanksgiving.all
    if(@thanksgivings.kind_of?(Array))
      puts 'true'
    else
      puts 'false'
    end
    #@thanksgivings.reverse!

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @thanksgivings }
    end
  end

  # GET /thanksgivings/1
  # GET /thanksgivings/1.json
  def show
    @thanksgiving = Thanksgiving.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @thanksgiving }
    end
  end

  # GET /thanksgivings/new
  # GET /thanksgivings/new.json
  def new
    @thanksgiving = Thanksgiving.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @thanksgiving }
    end
  end

  # GET /thanksgivings/1/edit
  def edit
    @thanksgiving = Thanksgiving.find(params[:id])
  end

  # POST /thanksgivings
  # POST /thanksgivings.json
  def create
    @thanksgiving = Thanksgiving.new(params[:thanksgiving])

    respond_to do |format|
      if @thanksgiving.save
        format.html { redirect_to @thanksgiving, notice: 'Thanksgiving was successfully created.' }
        format.json { render json: @thanksgiving, status: :created, location: @thanksgiving }
      else
        format.html { render action: "new" }
        format.json { render json: @thanksgiving.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /thanksgivings/1
  # PUT /thanksgivings/1.json
  def update
    @thanksgiving = Thanksgiving.find(params[:id])

    respond_to do |format|
      if @thanksgiving.update_attributes(params[:thanksgiving])
        format.html { redirect_to @thanksgiving, notice: 'Thanksgiving was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @thanksgiving.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thanksgivings/1
  # DELETE /thanksgivings/1.json
  def destroy
    @thanksgiving = Thanksgiving.find(params[:id])
    @thanksgiving.destroy

    respond_to do |format|
      format.html { redirect_to thanksgivings_url }
      format.json { head :no_content }
    end
  end
end
