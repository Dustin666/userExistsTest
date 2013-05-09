class ExistsController < ApplicationController
  # GET /exists
  # GET /exists.json
  def index
   # @exists = Exist.all

   ergebnis = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: ergebnis}
    end
  end

  # GET /exists/1
  # GET /exists/1.json
  def show
    @exist = Exist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exist }
    end
  end

  # GET /exists/new
  # GET /exists/new.json
  def new
    @exist = Exist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exist }
    end
  end

  # GET /exists/1/edit
  def edit
    @exist = Exist.find(params[:id])
  end

  # POST /exists
  # POST /exists.json
  def create
    @exist = Exist.new(params[:exist])

    respond_to do |format|
      if @exist.save
        format.html { redirect_to @exist, notice: 'Exist was successfully created.' }
        format.json { render json: @exist, status: :created, location: @exist }
      else
        format.html { render action: "new" }
        format.json { render json: @exist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exists/1
  # PUT /exists/1.json
  def update
    @exist = Exist.find(params[:id])

    respond_to do |format|
      if @exist.update_attributes(params[:exist])
        format.html { redirect_to @exist, notice: 'Exist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exists/1
  # DELETE /exists/1.json
  def destroy
    @exist = Exist.find(params[:id])
    @exist.destroy

    respond_to do |format|
      format.html { redirect_to exists_url }
      format.json { head :no_content }
    end
  end
end
