if [ "$USERDOMAIN" == "NWIE" ]; then
  export USERNAME=`echo $LOGNAME | tr "A-Z" "a-z"`
  PROXY_PWD=<pass>
  PROXY_PROTOCOL=<protocol>
  PROXY_SERVER=<server>
  PROXY_PORT=<port>
  export HTTP_PROXY=$PROXY_PROTOCOL://$USERNAME:$PROXY_PWD@$PROXY_SERVER:$PROXY_PORT
fi
