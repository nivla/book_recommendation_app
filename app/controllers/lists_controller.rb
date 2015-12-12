class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.
      includes(:books).
      joins(:books).
      where("lists.id = ?", params[:id]).
      first
  end
end
