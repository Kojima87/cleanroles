class TopController < ApplicationController
  def index
    @members = Member.order('id')
  end

  def lottery
    if Role.count > (Member.doit.count + Member.entry.count)
      redirect_to root_path, notice: 'メンバーを増やしてください！'
    else
      @members, @histories = Member.data_set()
    end
  end

  private

  def checkbox_params
    params.require(:hoge).permit(hoge_ids: [])
  end
end
