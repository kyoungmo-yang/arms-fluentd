#!/usr/bin/env ruby


def nowtostr
        now = Time.new()
        return now.strftime("%Y/%m/%d %H:%M:%S")
end

def logging
        logs = [{'log'=>'%TIME% [error] 25789#0: *34836828 no live upstreams while connecting to upstream, client: 220.118.140.19, server: localhost, request: "GET /embian/sns/noti/count?vid=19618328&authKey=dG1fVi5tVB91Ww5eLGM0RCpMdVR.SZFoGdR98RnpmXF4.E&callback=jQuery1110022958673524704265_1407046003198&_=1407046003911 HTTP/1.1", upstream: "http://sna_ext/embian/sns/noti/count?vid=19618328&authKey=dG1fVi5tVB91Ww5eLGM0RCpMdVR.SZFoGdR98RnpmXF4.E&callback=jQuery1110022958673524704265_1407046003198&_=1407046003911", host: "sna.embian.com", referrer: "http://www.embian.com/"', 'sleep'=>10},
        {'log'=>'%TIME% [error] 25789#0: *34113122 upstream prematurely closed connection while reading response header from upstream, client: 121.189.20.62, server: localhost, request: "GET /embian/song/addsongN?authKey=f2YtUnYnfUItLBEeeCAiBCwgZ1N.SdFQHdV0oAw.E.E&device=iphone&musics=KE0000617001001,KD0005723001002,KA0047165001004,KD0002962001001,KD0018313001001,KS0014266001001,KA0043571001008,KA0054792001003,KS0018112001001', 'sleep'=>10}]
        File.open('/data/error.log', 'a+') do |file|
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
