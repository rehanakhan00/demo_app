class UserRk1sController < ApplicationController
  # GET /user_rk1s
  # GET /user_rk1s.json
  def index
    @user_rk1s = UserRk1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_rk1s }
    end
  end

  # GET /user_rk1s/1
  # GET /user_rk1s/1.json
  def show
    @user_rk1 = UserRk1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_rk1 }
    end
  end

  # GET /user_rk1s/new
  # GET /user_rk1s/new.json
  def new
    @user_rk1 = UserRk1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_rk1 }
    end
  end

  # GET /user_rk1s/1/edit
  def edit
    @user_rk1 = UserRk1.find(params[:id])
  end

  # POST /user_rk1s
  # POST /user_rk1s.json
  def create
    @user_rk1 = UserRk1.new(params[:user_rk1])

    respond_to do |format|
      if @user_rk1.save
        format.html { redirect_to @user_rk1, notice: 'User rk1 was successfully created.' }
        format.json { render json: @user_rk1, status: :created, location: @user_rk1 }
      else
        format.html { render action: "new" }
        format.json { render json: @user_rk1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_rk1s/1
  # PUT /user_rk1s/1.json
  def update
    @user_rk1 = UserRk1.find(params[:id])

    respond_to do |format|
      if @user_rk1.update_attributes(params[:user_rk1])
        format.html { redirect_to @user_rk1, notice: 'User rk1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_rk1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_rk1s/1
  # DELETE /user_rk1s/1.json
  def destroy
    @user_rk1 = UserRk1.find(params[:id])
    @user_rk1.destroy

    respond_to do |format|
      format.html { redirect_to user_rk1s_url }
      format.json { head :no_content }
    end
  end
end
