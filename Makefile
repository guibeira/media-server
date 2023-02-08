
create-folders:
	mkdir -p /home/${USER}/media-download/{movies,music,television}
	mkdir -p /home/$USER/media-config/{config,data,jackett,lidarr,radarr,sonarr,prowlarr}
	sudo mkdir -p /var/docker/plex/{config,transcode}
	sudo chown ${USER}:${USER} /var/docker/plex/{config,transcode}
