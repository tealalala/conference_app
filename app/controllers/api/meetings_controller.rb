class Api::MeetingsController < ApplicationController
  def index
    @meetings = Meeting.all
    render 'index-meetings.json.jbuilder'
  end

  def show
    @meeting = Meeting.find_by(id: params[:id])
    render 'show-meetings.json.jbuilder'
  end
end
