class Api::SpeakersController < ApplicationController
  ### speakers
  def index
    @speakers = Speaker.all
    render 'index.json.jbuilder'
  end

  def show
    @speaker = Speaker.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @speaker = Speaker.new(
      first_name: params[:input_first_name],
      last_name: params[:input_last_name],
      email: params[:input_email],
      age: params[:input_age],
      gender: params[:input_gender]
    )
    @speaker.save
    render 'show.json.jbuilder'
  end

  def update
    @speaker = Speaker.find_by(id: params[:id])
    @speaker.update(
      first_name: params[:input_first_name] || first_name,
      last_name: params[:input_last_name] || last_name,
      email: params[:input_email] || email,
      age: params[:input_age] || age,
      gender: params[:input_gender] || gender
    )
    @speaker.save
    render 'show.json.jbuilder'
  end

  def destroy
    @speaker = Speaker.find_by(id: params[:id])
    @speaker.destroy
    render 'destroy.json.jbuilder'
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
