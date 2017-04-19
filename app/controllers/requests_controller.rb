class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy, :accept_request]


  # GET /requests
  # GET /requests.json
  def index
    @requests = Request.where(user_other_id: nil)
    @user_posted_requests = Request.where(user_id: current_user.id)
    @user_accepted_requests = Request.where(user_other_id: current_user.id)
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
    if @request.user_other_id.present?
      @other_user = User.find(id:@request.user_other_id)
    else
      @other_user = nil
    end
  end

  # GET /requests/new
  def new
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(request_params)
    @request.user_id = current_user.id if current_user
    @request.buyer = current_user.first_name+' '+ current_user.last_name
    if (@request.start_time).past?
      respond_to do |format|
        format.html { redirect_to requests_url, notice: 'You cannot have the request time to happen in the past' }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    else
      respond_to do |format|
        if @request.save
          format.html { redirect_to requests_url, notice: 'Request was successfully created.' }
          format.json { render :show, status: :created, location: @request }
        else
          format.html { render :new }
          format.json { render json: @request.errors, status: :unprocessable_entity }
        end
      end
    end

  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    if @request.user_other_id.present?
      respond_to do |format|
        format.html { redirect_to @request, notice: "You can\t edit request since someone already took the offer"}
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    else
      respond_to do |format|
        if @request.update(request_params)
          format.html { redirect_to @request, notice: 'Request was successfully updated.' }
          format.json { render :show, status: :ok, location: @request }
        else
          format.html { render :edit }
          format.json { render json: @request.errors, status: :unprocessable_entity }
        end
      end
    end

  end

  def accept_request
    current_id = current_user.id
    respond_to do |format|
      if current_id != @request.user_id && @request.update(user_other_id: current_id)
        format.html { redirect_to requests_path, notice: 'You accepted the request' }
        format.json { render :show, status: :ok, location: @request }
      else
        if current_id == @request.user_id
          format.html { redirect_to requests_path, notice: 'Cannot accept the request: You can\'t accept your own' }
          format.json { render json: @request.errors, status: :unprocessable_entity }
        else
          format.html { redirect_to requests_path, notice: 'Cannot accept the request: update error. Ask system admin' }
          format.json { render json: @request.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:buyer_rating, :seller_rating, :buyer, :seller, :food_description, :price, :end_time, :location, :exchange_method, :special_request, :start_time)
    end
end
