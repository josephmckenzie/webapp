require 'sinatra.rb'

get '/' do 
'My name is Joseph Mckenzie'
end

get '/joe' do
"My dogs name was bubba"
end

get '/hello/:name' do |n|

"Hello #{n}!"
end

get "/add/:int1/:int2/:int3" do |a,b,c|

"#{a}+#{b}*#{c} = #{a.to_i + b.to_i*c.to_i}"
end

get '/3para/:name/:word/:int1' do |name1,name2,numb1|

"#{name1}" + "#{name2}" + "#{numb1.to_i*4}"
end


get '/details' do
	erb :username
	end
	
post '/details' do
erb:age, :locals => {:name => params[:user]}

end

post '/age' do
age = params["age"].to_i
if age <60 
erb:numbers 

else
	"In ten years your old butt will be: #{age + 10}."
		end
		end

post '/numbers' do
f1=params['Favorite_Numbers1'].to_i
f2=params['Favorite_Numbers2'].to_i
f3=params['Favorite_Numbers3'].to_i

"The sum of your favorite numbers is : #{f1+f2+f3}"

end

