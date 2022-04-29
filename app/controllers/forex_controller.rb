# CAN DEF MAKE THESE VARIABLES GLOBAL RIGHT?
class ForexController < ApplicationController
  def currency

    @raw_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_data)
    @symbols_hash = @parsed_data.fetch("symbols")


    @array_of_symbols = @symbols_hash.keys
    render({ :template => "exchange_templates/currency_pairs.html.erb" })
  end

  def choose

    @raw_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_data)
    @symbols_hash = @parsed_data.fetch("symbols")


    @array_of_symbols = @symbols_hash.keys

    @first_currency = params.fetch("first_choice")
    render({ :template => "exchange_templates/convert.html.erb" })
  end

  def exchange

    @raw_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_data)
    @symbols_hash = @parsed_data.fetch("symbols")


    @array_of_symbols = @symbols_hash.keys

    @first_currency = params.fetch("first_choice")
    @second_currency = params.fetch("second_choice")
    render({ :template => "exchange_templates/forex_final.html.erb" })
  end
end