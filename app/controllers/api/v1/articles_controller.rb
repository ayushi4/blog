class Api::V1::ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
        render json: @article
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(title: "...", body: "...")

        if @article.save
            redirect_to @article
        else
            render:new
        end
    end

    def update
        @article = Article.find(params[:id])
        if @article
            @article.update(article_params)
            render json: { message: 'Article updated successfully.' }, status: 200
        else
            render json: { error: 'Unable to update Article.' }, status:400
        end
    end

    private

    def article_params
        params.require(:article).permit(:title, :body)
    end

end
