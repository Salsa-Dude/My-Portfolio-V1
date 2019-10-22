
module DefaultPageTitle
  extend ActiveSupport::Concern

  included do 
    before_action :set_title
  end

  def set_title 
    @page_title = "My Portfolio | Joseph Arias"
  end

end