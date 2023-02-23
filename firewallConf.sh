#!/bin/bash
firewallDeploy(){
  curl http://192.168.10.9:8080/wm/firewall/module/enable/json -X PUT



  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:01","dst-mac":"00:00:00:00:00:02"}'

  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:01","dst-mac":"00:00:00:00:00:03"}'

  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:01","dst-mac":"00:00:00:00:00:04"}'

  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:01","dst-mac":"00:00:00:00:00:05"}'

  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:02","dst-mac":"00:00:00:00:00:01"}'

  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:02","dst-mac":"00:00:00:00:00:01","nw-proto":"ICMP", "action":"DENY"}'

  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:02","dst-mac":"00:00:00:00:00:03"}'

  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:02","dst-mac":"00:00:00:00:00:04"}'

  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:02","dst-mac":"00:00:00:00:00:05"}'

  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:03","dst-mac":"00:00:00:00:00:01"}'

  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:03","dst-mac":"00:00:00:00:00:02"}'

  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:03","dst-mac":"00:00:00:00:00:04"}'

  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:03","dst-mac":"00:00:00:00:00:05"}'

  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:04","dst-mac":"00:00:00:00:00:01"}'

  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:04","dst-mac":"00:00:00:00:00:02"}'

  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:04","dst-mac":"00:00:00:00:00:03"}'

  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:04","dst-mac":"00:00:00:00:00:05"}'

  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:05","dst-mac":"00:00:00:00:00:01"}'

  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:05","dst-mac":"00:00:00:00:00:02"}'

  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:05","dst-mac":"00:00:00:00:00:03"}'

  curl http://192.168.10.9:8080/wm/firewall/rules/json -X POST -d '{"src-mac":"00:00:00:00:00:05","dst-mac":"00:00:00:00:00:04"}'

}
firewallDeploy
