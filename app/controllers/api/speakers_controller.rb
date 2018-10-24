class Api::SpeakersController < ApplicationController
  def index
    @speakers = Speaker.all
    render 'index-speakers.json.jbuilder'
  end

  def show
    @speaker = Speaker.find_by(id: params[:id])
    render 'show-speakers.json.jbuilder'
  end
end
