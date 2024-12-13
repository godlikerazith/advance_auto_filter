if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/godlikerazith/advance_auto_filter /advance_auto_filter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /advance_auto_filter
fi
cd /advance_auto_filter
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
