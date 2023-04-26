class JournalsController < ApplicationController
  def index
    @journals = Journal.all
  end

  def new
    @journal = Journal.new
  end

  def create
    journal = Journal.create journal_params
      redirect_to journals_path
  end

  def edit
    @journal = Journal.find params[:id]
  end

  def update
    #get the journal entry
    journal = Journal.find params[:id]
    #update the journal from params
    journal.update journal_params
    # go to the show page for this journal
    redirect_to journal
end

def show
  @journal = Journal.find params[:id]
end

def destroy
  journal = Journal.find params[:id]
  journal.destroy
  redirect_to journals_path
end
 
private 

def journal_params
  params.require(:journal).permit(:title, :story, :image)
end

end
