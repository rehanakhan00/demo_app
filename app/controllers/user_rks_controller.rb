class UserRksController < ApplicationController
  # GET /user_rks
  # GET /user_rks.json
  def index
    @user_rks = UserRk.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_rks }
    end
  end

  # GET /user_rks/1
  # GET /user_rks/1.json
  def show
    @user_rk = UserRk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_rk }
    end
  end

  # GET /user_rks/new
  # GET /user_rks/new.json
  def new
    @user_rk = UserRk.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_rk }
    end
  end

  # GET /user_rks/1/edit
  def edit
    @user_rk = UserRk.find(params[:id])
  end

  # POST /user_rks
  # POST /user_rks.json
  def create
    @user_rk = UserRk.new(params[:user_rk])

    respond_to do |format|
      if @user_rk.save
        format.html { redirect_to @user_rk, notice: 'User rk was successfully created.' }
        format.json { render json: @user_rk, status: :created, location: @user_rk }
      else
        format.html { render action: "new" }
        format.json { render json: @user_rk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_rks/1
  # PUT /user_rks/1.json
  def update
    @user_rk = UserRk.find(params[:id])

    respond_to do |format|
      if @user_rk.update_attributes(params[:user_rk])
        format.html { redirect_to @user_rk, notice: 'User rk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_rk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_rks/1
  # DELETE /user_rks/1.json
  def destroy
    @user_rk = UserRk.find(params[:id])
    @user_rk.destroy

    respond_to do |format|
      format.html { redirect_to user_rks_url }
      format.json { head :no_content }
    end
  end
end
