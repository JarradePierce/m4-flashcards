class CardsController < ApplicationController

  def index
    @cards = Card.all
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)

    respond_to do |format|
      if @blog.save
        format.html { redirect_to user_blog_path(@user, @blog), notice: "created new blog" }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { redirect_to user_path(@user), notice: "failed to create blog" }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @card = find_card
  end

  private

  def cards_params
    params.require(:card).permit(:title, :body, :answer1, :answer1, :answer2, :answer3)
  end

  def find_card
    Card.find(params[:id])
  end

end
