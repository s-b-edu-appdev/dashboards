class ForexController < ApplicationController
  def setup
    render({ :template => "forex_templates/main_page.html.erb" })
  end
end
