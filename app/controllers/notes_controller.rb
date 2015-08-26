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
    tags = params[:tags].split(',').collect(&:strip) unless params[:tags].nil?
    @note = Note.new(note_params)
    if @note.save

      # Assign the note to a user if one has been set
      if @user
        @user.notes << @note
      end

      # Add tags if there are any
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
