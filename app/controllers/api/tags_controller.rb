class TagsController < ApplicationController

def index
  @notes = Note.all.select do |note|
    note.tags.collect(&:name).include?(params[:tag_name])
  end
  render json: @notes
end

end
