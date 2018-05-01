class TopController < ApplicationController
  def index
    @members = Member.not_deleted
    @roles = Role.not_deleted
  end

end
