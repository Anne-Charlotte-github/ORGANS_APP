class OrgansController < ApplicationController
  def index
    organ_type = params[:organ_type]
    if organ_type.present?
      @organs = Organ.where(organ_type: organ_type)
    else
      @organs = Organ.all
    end
  end
end
