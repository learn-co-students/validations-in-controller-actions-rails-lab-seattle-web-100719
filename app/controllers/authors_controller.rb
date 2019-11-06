class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    #They had @author = Author.create!(author_params)
    #create! will automatically throw errors according
    #to your validations
    @author = Author.new(author_params)

    if @author.valid?
      #have to save @author to database if valid
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
