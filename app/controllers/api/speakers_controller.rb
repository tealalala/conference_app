class Api::SpeakersController < ApplicationController
  def one_speaker
    @speaker = Speaker.last
    render 'one_speaker.json.jbuilder'
  end

  def all_speakers
    @speakers = Speaker.all
    render 'all_speakers.json.jbuilder'
  end
end
