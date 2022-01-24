if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/mbrhdrg01/MM-Filter.git /MM-Filter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MM-Filter
fi
cd /MM-Filter
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
