class NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes.to_json
  end

  def create
    @note = Note.create(note_params)
    if @note.save
      render json: @note.to_json
    else
      render json: @note.errors
    end
  end

  private

  def note_params
    params.permit(:body, :title)
  end


end
