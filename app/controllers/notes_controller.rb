class NotesController < ApplicationController

  def index
    if @user
      @notes = @user.notes
    else
      @notes = Note.all
    end
    render json: @notes
    
  end

  def create
    if params[:tags]
      tags = params[:tags].split(',').collect(&:strip)
    end
    @note = Note.new(note_params)
    if @note.save
      if @user
        @user.notes << @note
      end
      if tags
        tags.each do |tag|
          @note.tags << Tag.create(name: tag)
        end
      end
      render json: @note
    else
      render json: @note.errors
    end
  end

  def by_tag
    @tag = params[:tag_name]
    @notes = Note.all.select do |note|
      note.tags.collect(&:name).include?(params[:tag_name])
    end
    render json: { tag: @tag, notes: @notes }
  end

  private

  def note_params
    params.permit(:title, :body)
  end

end
