#if [ ! -d /mcserver ]; then
#	mkdir /mcserver
#	echo "made folder"
#fi

echo "chdir to folder"
cd /mcserver
mv /server.properties server.properties

if [ ! -f .init ]; then
	wget https://api.papermc.io/v2/projects/paper/versions/1.20.1/builds/97/downloads/paper-1.20.1-97.jar -O paper.jar
	chmod 777 paper.jar
	echo "eula=true" > eula.txt
	touch .init
fi

exec "$@"
