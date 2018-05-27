class TopController < ApplicationController
  def index
    @members = Member.entry
    @decision_members = Member.doit
  end

  def lottery
    @members, @histories = Member.data_set()
  end

  private

  def checkbox_params
    params.require(:hoge).permit(hoge_ids: [])
  end
end
