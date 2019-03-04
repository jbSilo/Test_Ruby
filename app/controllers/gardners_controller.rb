class GardnersController < ApplicationController
    def index
        @gardners = Gardner.all.order('name ASC')
    end
    
    def show
        @gardner = Gardner.find(params[:id])
    end
    
    def new
        @gardner = Gardner.new
    end
    
    def edit
        @gardner = Gardner.find(params[:id])
    end
    
    def create
        @gardner = Gardner.new(gardner_params)
        
        if @gardner.save
            redirect_to @gardner
        else
            render 'new'
        end
    end
    
    def update
        @gardner = Gardner.find(params[:id])
        
        if @gardner.update(gardner_params)
            redirect_to @gardner
        else
            render 'edit'
        end
    end
    
    def destroy 
        @gardner = Gardner.find(params[:id])
        @gardner.destroy
        
        redirect_to gardners_path
    end
    
    def sort
        
    end
    
    private
        def gardner_params
            params.require(:gardner).permit(:name, :number, :plot_num)
        end
end
