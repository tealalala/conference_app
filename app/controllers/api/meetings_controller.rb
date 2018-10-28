class Api::MeetingsController < ApplicationController
  def index
    @meetings = Meeting.where(remote: true)
    render 'index.json.jbuilder'
  end

  def show
    @meeting = Meeting.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @meeting = Meeting.new(
      title: params[:input_title],
      agenda: params[:input_agenda],
      time: params[:input_time],
      location: params[:input_location]
    )
    @meeting.save
    if @speaker.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder'
    end
  end

  def update
    @meeting = Meeting.find_by(id: params[:id])
    # @meeting.title = params[:input_title] || @meeting.title
    # @meeting.agenda = params[:input_agenda] || @meeting.agenda
    # @meeting.time = params[:input_time] || @meeting.time
    # @meeting.save
    @meeting.update(
      title: params[:input_title],
      agenda: params[:input_agenda],
      time: params[:input_time],
      location: params[:input_location]
    )
    if @speaker.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder'
    end
  end

  def destroy
    @meeting = Meeting.find_by(id: params[:id])
    @meeting.destroy
    render 'destroy.json.jbuilder'
  end
end
