

get '/' do
  @grandma = params[:grandma]
  erb :index
end

post '/grandma' do
  input = params[:user_input]
  if input == input.upcase
    grandma_response = "Not since 1985."
  else
    grandma_response = "Speak up, Sonny!"
  end
  redirect to("/?grandma=#{grandma_response}")
end
