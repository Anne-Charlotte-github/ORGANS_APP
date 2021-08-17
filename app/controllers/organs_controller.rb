class OrgansController < ApplicationController
  def index
    @organs = Organ.all
  end
end
