if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Luttappi333/TechMagazine-AutoFilterBot.git /EvaMaria
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EvaMaria
fi
cd /EvaMaria
pip install --upgrade pip requirements.txt
echo "Starting Bot...."
python3 bot.py
