if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/vinaychauhan01/obitomaster-again
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /obitomaster-again
fi
cd /obitomaster-again
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
