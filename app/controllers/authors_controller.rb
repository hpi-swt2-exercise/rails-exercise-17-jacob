class AuthorsController < ApplicationController
  def new
  end

  def create
  	@author = Author.new(article_params)

  	@author.save
  	redirect_to @author
  end

  private
  	def article_params
  	  params.require(:author).permit(:title, :text)
  	end

end
