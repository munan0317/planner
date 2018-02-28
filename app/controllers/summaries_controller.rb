class SummariesController < ApplicationController
  def new
  end
  def index
    @summaries = Summary.all
  end
  def show
    @summary = Summary.find(params[:id])
  end
  def create
    @summary = Summary.new(params.require(:summary).permit(:date, :merchant, :number, :title, :text))

    @summary.save
    redirect_to @summary
  end

#   private
#     def summary_params
#       params.require(:summary).permit(:date, :merchant, :number, :title, :text)
#     end
end
