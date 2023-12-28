 sudo firewall-cmd --add-port=17/tcp
 sudo firewall-cmd --direct --add-rule ipv4 filter INPUT 0 -p tcp --dport 17 -m state --state NEW -m recent --set --name QOTD_CONN --rsource
 sudo firewall-cmd --direct --add-rule ipv4 filter INPUT 1 -p tcp --dport 17 -m state --state NEW -m recent --update --seconds 60 --hitcount 3 --name QOTD_CONN --rsource -j DROP