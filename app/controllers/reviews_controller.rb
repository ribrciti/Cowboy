class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  # POST /reviews
  # POST /reviews.json
  def create

    @movie = Movie.find(params[:movie_id])    
    @review = @movie.reviews.new(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to movie_path (@movie), notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { redirect_to movie_path (@movie), notice: 'Review was NOT successfully created.' }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  
  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to movie_path(@review.movie_id) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:title, :author, :content, :rating, :movie_id)
    end
end
