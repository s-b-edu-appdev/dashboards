class ForexController < ApplicationController
  def setup
    symbol_url = "https://api.exchangerate.host/symbols"
    @symbol_data = JSON.parse(open(symbol_url).read).dig("symbols")
    render({ :template => "forex_templates/main_page.html.erb" })
  end
  def first_currency
    @from_currency = params.fetch("first_currency")
    symbol_url = "https://api.exchangerate.host/symbols"
    @symbol_data = JSON.parse(open(symbol_url).read).dig("symbols")
    render({ :template => "forex_templates/first_currency.html.erb" })
  end
end
