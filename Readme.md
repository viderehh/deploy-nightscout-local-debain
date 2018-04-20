install nightscout on your own debian webserver (including mongodb) 

git clone https://github.com/viderehh/deploy-nightscout-local-debain  
cd deploy-nightscout-local-debain;chmod +x ns-local-install.sh 
./ns-local-install.sh  

before start your nightscout  
edit /opt/start-nightscout.sh  
change CUSTOM_TITLE=mysitename_without_space  
and API_SECRET=my_24_characters_or_more_password  

create mongodb user  
https://gist.github.com/tamoyal/10441108  
edit /opt/start-nightscout.sh  
MONGO_CONNECTION=mongodb://user:password@localhost:port/database  

secure your site with https and letsencrypt  
https://gist.github.com/johnmales/1b3c927f2a56aae640b4b2cd0298b1e7#create-reverse-nginx-proxy  
