
create-folders:
	mkdir -p /home/${USER}/media-download/movies
	mkdir -p /home/${USER}/media-download/music
	mkdir -p /home/${USER}/media-download/television
	mkdir -p /home/${USER}/media-config/config
	mkdir -p /home/${USER}/media-config/data
	mkdir -p /home/${USER}/media-config/jackett
	mkdir -p /home/${USER}/media-config/lidarr
	mkdir -p /home/${USER}/media-config/radarr
	mkdir -p /home/${USER}/media-config/sonarr
	mkdir -p /home/${USER}/media-config/prowlarr
	sudo mkdir -p /var/docker/plex/{config,transcode}
	sudo chown ${USER}:${USER} /var/docker/plex/{config,transcode}
