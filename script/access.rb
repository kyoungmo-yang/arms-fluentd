#!/usr/bin/env ruby

def nowtostr
	now = Time.new()
	return now.strftime("%d/%b/%Y:%H:%M:%S +0900")
end

def logging
	logs = [{'log'=>'22.106.38.210 - - [%TIME%] "GET /embian/apiMoniter?mType=user&callback=jQuery183036816647951491177_1405545918754&_=1405545918769 HTTP/1.1" 200 1366 "http://devsna01.embian.com:8080/apimonitor.html" "Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36" 0.123 0.123', 'sleep'=>0.123},
        {'log'=>'121.189.23.73 - - [%TIME%] "GET /user/join/simple?serviceId=223&userId=ubiqbt2ejk&idType=basic&loginId=ubiqbt2ejk@embian.com&nickname=ubiqbt2ejk&device=android&logType=activity HTTP/1.1" 200 1329 "-" "-" 3.234 3.234', 'sleep'=>3.234},
        {'log'=>'121.189.21.70 - - [%TIME%] "GET /user/info?id=18645048&uType=vid&version=3.0 HTTP/1.1" 200 1280 "-" "Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko" 0.053 0.053', 'sleep'=>0.053}]
	File.open('/data/access.log', 'a+') do |file|
		logs.each do |log|
                	file.puts log['log'].gsub('%TIME%', nowtostr())
			file.flush
                	sleep(log['sleep'])
        	end
	end
end
while true do
	logging
end
