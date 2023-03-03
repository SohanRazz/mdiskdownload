if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SohanRazz/mdiskdownload.git /mdiskdownload
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /mdiskdownload
fi
cd /mdiskdownload
pip install -U -r requirements.txt
echo "Starting Bot...."
python bot.py
