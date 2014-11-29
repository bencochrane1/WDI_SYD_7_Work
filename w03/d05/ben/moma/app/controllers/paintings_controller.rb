class PaintingsController < ApplicationController

    def show
        @painting = Painting.find(params[:id])
    end

    def index
        @paintings = Painting.all
    end

    def new
        @painting = Painting.new
    end

    def create
        @painting = Painting.create(painting_params)

        if @painting.save
            redirect_to @painting
        else
            render 'new'
        end
    end

    private

        def painting_params
            params.require(:painting).permit(
                :title,
                :year,
                :medium,
                :style,
                :image
                )
        end

end
