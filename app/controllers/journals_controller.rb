class JournalsController < ApplicationController
  def index
    @journals = Journal.all
  end

  def new
    @journal = Journal.new
  end

  def edit
  end

  def show
    @journal = Journal.find params[:id]
  end
end
