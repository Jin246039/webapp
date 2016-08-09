#!/usr/bin/env ruby

$stderr.puts "loading"
require 'sinatra'

get '/' do
	# halt erb(:login) unless parmas[:user]
	# erb :login, :locals => { :user => params[:user].gsub(/\W/, '') }
	erb :agency
end

post '/' do
	# 
end

put '/' do
	# 
end

patch '/' do
	# 
end

delete '/' do
	# 
end

options '/' do
	# 
end

link '/' do
	# 
end

unlink '/' do
	# 
end

$stderr.puts "starting"

__END__

@@ layout
<html>
	<head>
		<title>Super Simple Chat with Sinatra</title>
		<meta charset="utf-8" />
	</head>
	<body><%= yield %></body>
</html> 

<!-- @@ login
<form action='/'>
	<label for='user'>User Name:</label>
	<input name='user' value='' />
	<input type='submit' value="GO!" />
</form> -->

@@ chat
<pre id='chat'></pre>
<form>
	<input id='msg' placeholder='type message here...' />
</form>

<script>
// reading
var es = new EventSource('/stream');
es.onmessage = function(e) { $('#char').append(e.data + "\n") };

</script>
