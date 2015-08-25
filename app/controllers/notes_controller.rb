class NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    tags = params[:tags].split(',').collect(&:strip)
    @note = Note.create(note_params)
    if @note.save
      tags.each do |tag|
        @note.tags << Tag.create(name: tag)
      end
      render json: @note
    else
      render json: @note.errors
    end
  end

  private

  def note_params
    params.permit(:title, :body)
  end

end
