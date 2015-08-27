class Api::TagsController < ApplicationController

def index
  @tag = Tag.find_by_name(params[:tag_name])
  @notes = @tag.notes
  render json: @notes
end

end
