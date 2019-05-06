class CategoriesController < ApplicationController
  before_action :set_category, only: [:edit, :update, :destroy]
  # before_action :require_login
    #
    # def index
    #   @categories = Category.all
    # end

    def new
      if !!flash[:data]
        @category = Category.new(flash[:data])
      else
        @category = Category.new
      end
    end

    def create
     @category= Category.create(category_params)
     if @category.valid?
       redirect_to category_path(@category)
     else
       flash[:errors] = @category.errors.full_messages
       flash[:data] = category_params
       redirect_to login_path
     end
    end

    # def show
    # end

    def edit
    end

    def update
      if @category.update(category_params)
       redirect_to category_path(@category)
      else
       flash[:errors] = @category.errors.full_messages
       flash[:data] = category_params
       redirect_to edit_category_path
      end
    end

    def destroy
      @category.destroy
      redirect_to categories_path
    end

    private

    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:goal_type)
    end

end
