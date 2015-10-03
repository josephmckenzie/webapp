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
	


