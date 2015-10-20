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

get '/login' do
	erb :login
	
end

before do
	@username = params[:username]
	@password = params[:password]
end

def authenticate
	file = File.open('public/authentication.csv', 'r')
	
	file.each do |user|
		username_password = user.split(",")
		username = username_password[0]
		password = username_password[1].chomp
	if  username == @username && password == @password
		@auth = 1
	end
end
end

post '/login' do
authenticate
	if @auth == 1
	erb :main
	else redirect back
	end
	end

	
		
#having issues putting up a message when invalid user/password combo I can however just do a page that 
#would look like it was same login page and display an error message This is what invalid view does
# so just change line 82 to :invalid instead of redirecting back to login and it will display an message and 
#allow you to retype username and password