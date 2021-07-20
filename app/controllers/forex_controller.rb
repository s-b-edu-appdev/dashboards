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
  def conversion
    @from_currency = params.fetch("first_currency")
    @to_currency = params.fetch("second_currency")
    conversion_url = "https://api.exchangerate.host/convert?from=#{@from_currency}&to=#{@to_currency}"
    conversion_data = JSON.parse(open(conversion_url).read)
    @rate = conversion_data.dig("info","rate")
    render({ :template => "forex_templates/conversion.html.erb" })
  end
end
