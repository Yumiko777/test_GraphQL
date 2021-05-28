class BlogtestsController < ApplicationController
  before_action :set_blogtest, only: %i[ show edit update destroy ]

  # GET /blogtests or /blogtests.json
  def index
    @blogtests = Blogtest.all
  end

  # GET /blogtests/1 or /blogtests/1.json
  def show
  end

  # GET /blogtests/new
  def new
    @blogtest = Blogtest.new
  end

  # GET /blogtests/1/edit
  def edit
  end

  # POST /blogtests or /blogtests.json
  def create
    @blogtest = Blogtest.new(blogtest_params)

    respond_to do |format|
      if @blogtest.save
        format.html { redirect_to @blogtest, notice: "Blogtest was successfully created." }
        format.json { render :show, status: :created, location: @blogtest }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blogtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogtests/1 or /blogtests/1.json
  def update
    respond_to do |format|
      if @blogtest.update(blogtest_params)
        format.html { redirect_to @blogtest, notice: "Blogtest was successfully updated." }
        format.json { render :show, status: :ok, location: @blogtest }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blogtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogtests/1 or /blogtests/1.json
  def destroy
    @blogtest.destroy
    respond_to do |format|
      format.html { redirect_to blogtests_url, notice: "Blogtest was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blogtest
      @blogtest = Blogtest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blogtest_params
      params.require(:blogtest).permit(:title, :text)
    end
end
