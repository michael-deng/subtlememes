class MemesController < ApplicationController
    def index
        @memes = Meme.all
    end

    def show
        @meme = Meme.find(params[:id])
    end

    def new
        @meme = Meme.new
    end

    def edit
    end

    def create
        @meme = Meme.new(meme_params)

        if @meme.save
            redirect_to memes_path
        else
            render 'new'
        end
    end

    def update
    end

    def destroy
    end

    private
        def meme_params
            params.require(:meme).permit(:link, :tag_ids)
        end
end

