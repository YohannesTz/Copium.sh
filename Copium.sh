while true; do
  if [ "$1" = "" ];then
    notify-send "Everything Is Going To Be Fine.." -i cope_cat.jpg
    if [ $? -ne 0 ];then
      dunstify "Everything Is Going To Be Fine.." -I cope_cat.jpg
      if [ $? -ne 0 ];then
        dunstify "Both notify-send and dunstify not found!!" -u critical -h 10
        exit 1
      fi
    fi
    sleep 60
  elif [ "$1" = "--joke" ];then
    title=$(curl --location 'https://gabrovwoch-backend.onrender.com/api/random' | jq '.data[0] .title')
    joke=$(curl --location 'https://gabrovwoch-backend.onrender.com/api/random' | jq '.data[0] .description')     
    notify-send "$description" -i jk.jpg
    if [ $? -ne 0 ];then
     dunstify "$title" "$joke" -I jk.jpg 
      if [ $? -ne 0 ];then
        echo "Both notify-send and dunstify not found!!" 
        exit 1
      fi
    fi
    sleep 60
  fi
done
