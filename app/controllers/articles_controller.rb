
class ArticlesController < ApplicationController
	
	def index
		
		@articles = Article.all

	end


	def new
		@article = Article.new

		puts 'test'
	end

	def create
		@article = Article.new(article_params)

		@article.save
		redirect_to @article
	end

	def show
		@article = Article.find(params[:id])
	end

	def map
	end

	def result
	end

	private
  		def article_params
    		params.require(:article).permit(:title, :text)
  		end

end
