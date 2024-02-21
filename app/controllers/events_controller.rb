class EventsController < ApplicationController
  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @event = Event.new
  end

  def show
  end

  def index
    @events = Event.all
    @user = current_user
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:start_date, :duration, :title, :description, :price, :location, :admin_id)
  end
  
end
