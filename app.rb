require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.values.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    x = params[:number1].to_i
    y = params[:number2].to_i

    case params[:operation]
    when "add"
      return (x + y).to_s
    when "subtract"
      return (x - y).to_s
    when "multiply"
      return (x * y).to_s
    when "divide"
      return (x / y).to_s
    end
  end

end
