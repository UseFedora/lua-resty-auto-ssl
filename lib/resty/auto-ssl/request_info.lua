--    log_format fedora_combined '$remote_addr - $remote_user [$time_local] '
--                               '"$request" $status $body_bytes_sent '
--                               '"$http_referer" "$http_user_agent" '
--                               '$server_port $request_id';
--

return function
	local remote_addr 		= ngx.var.remote_addr
	local remote_user 		= ngx.var.remote_user
	local time_local  		= ngx.var.time_local
	local request 				= ngx.var.request
	local http_referer    = ngx.var.http_referer
	local http_user_agent = ngx.var.http_user_agent
	local server_port			= ngx.var.server_port
	local request_id			= ngx.var.request_id

	return {
		["remote_addr"] 		= remote_addr,
		["remote_user"] 		= remote_user
		["time_local"]  		= time_local,
		["request"]     		= request,
		["http_referer"] 		= http_referer,
		["http_user_agent"] = http_user_agent,
		["server_port"]			= ngx.var.server_port,
		["request_id"]			= ngx.var.request_id
	}
end
