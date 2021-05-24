class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :destroy]

  # GET /comments
  def index
    @comments = Comment.all

    render json: @comments, status: 200
  end

  # GET /comments/1
  def show
    render json: @comment

    render json: @comment, status: 200
  end

  # POST /comments
  def create
    @comment = Comment.create(comment_params)
    render json: @comment, include: [:stock], status: 200
end

  # PATCH/PUT /comments/1
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  def destroy
    @review = Comment.find(params[:id])
    @review.destroy
    render json: ("This comment was deleted successfully.").to_json
end
  private
   

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:stock_id, :comment, :commentor)
    end
end
