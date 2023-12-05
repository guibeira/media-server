DOWNLOAD_FOLDER=/home/${USER}/media-download

setup:
	@echo "Creating folders"
	mkdir -p ${DOWNLOAD_FOLDER}/movies
	mkdir -p ${DOWNLOAD_FOLDER}/music
	mkdir -p ${DOWNLOAD_FOLDER}/television
	mkdir -p /home/${USER}/media-config/config
	mkdir -p /home/${USER}/media-config/data
	mkdir -p /home/${USER}/media-config/jackett
	mkdir -p /home/${USER}/media-config/lidarr
	mkdir -p /home/${USER}/media-config/radarr
	mkdir -p /home/${USER}/media-config/sonarr
	mkdir -p /home/${USER}/media-config/prowlarr
	sudo mkdir -p /var/docker/plex/{config,transcode}
	sudo chown ${USER}:${USER} /var/docker/plex/config
	sudo chown ${USER}:${USER} /var/docker/plex/transcode

run:
	@echo "Running docker-compose"
	DOWNLOAD_FOLDER=${DOWNLOAD_FOLDER} docker-compose up -d
