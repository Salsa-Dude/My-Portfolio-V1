
module DefaultPageTitle
  extend ActiveSupport::Concern

  included do 
    before_action :set_title
  end

  def set_title 
    @page_title = "My Portfolio | Joseph Arias"
    @page_preview = "https://www.arias-us.org/wp-content/themes/arias/images/archives/ARIAS_2019_Q3_FINAL-4984.jpg"
  end

end