class Api::SpeakersController < ApplicationController
  ### speakers
  def index
    @speakers = Speaker.all
    render 'index-speakers.json.jbuilder'
  end

  def show
    @speaker = Speaker.find_by(id: params[:id])
    render 'show-speakers.json.jbuilder'
  end


  ### speakers with parameters
  def query_method
    @first_name = params[:first_name]
    render 'query.json.jbuilder'
  end

  def url_seg_method
    @message = params[:url_seg_var]
    render 'url_seg.json.jbuilder'
  end

  def body_method
    render 'body.json.jbuilder'
  end
end
