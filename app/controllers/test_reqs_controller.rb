class TestReqsController < ApplicationController
  before_action :set_test_req, only: [:show, :edit, :update, :destroy, :approve]

  # GET /test_reqs
  # GET /test_reqs.json
  def index
    @test_reqs = TestReq.all
  end

  # GET /test_reqs/1
  # GET /test_reqs/1.json
  def show
  end

  # GET /test_reqs/new
  def new
    @test_req = TestReq.new
  end

  # GET /test_reqs/1/edit
  def edit
  end

  def approve
    respond_to do |format|
      if @test_req.transition_to(:approved)
        format.html { redirect_to @test_req, notice: 'Test req was successfully approved.' }
        format.json { render action: 'index', status: :created, location: @test_req }
      else
        format.html { render action: 'index' }
        format.json { render json: @test_req.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /test_reqs
  # POST /test_reqs.json
  def create
    @test_req = TestReq.new(test_req_params)

    respond_to do |format|
      if @test_req.save
        format.html { redirect_to @test_req, notice: 'Test req was successfully created.' }
        format.json { render action: 'show', status: :created, location: @test_req }
      else
        format.html { render action: 'new' }
        format.json { render json: @test_req.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_reqs/1
  # PATCH/PUT /test_reqs/1.json
  def update
    respond_to do |format|
      if @test_req.update(test_req_params)
        format.html { redirect_to @test_req, notice: 'Test req was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @test_req.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_reqs/1
  # DELETE /test_reqs/1.json
  def destroy
    @test_req.destroy
    respond_to do |format|
      format.html { redirect_to test_reqs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_req
      @test_req = TestReq.find(params[:id] || params[:test_req_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_req_params
      params.require(:test_req).permit(:req_type, :unit, :site, :start_date, :end_date, :notes)
    end
end
