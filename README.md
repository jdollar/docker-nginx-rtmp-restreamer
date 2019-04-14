# nginx_rtmp_restream

Repo to hold a docker file that will handle sending a stream sent to a nginx server
over to different streaming services such as twitch and youtube live

Uses the following image for the basis of running the server https://github.com/DvdGiessen/nginx-rtmp-docker

## Envrionment Variables

### Twitch

To push the received stream out to twitch you need to provide the [ingestion host](https://stream.twitch.tv/ingests/) you would like to use as well as the stream key given to you from twitch which can be found in your account settings. They are defined as follows

`TWITCH_INGESTION_HOST` - Sample: `live-atl.twitch.tv`. Provide the host information for the ingestion client you want to use. Don't include protocol information or a trailing slash

`TWITCH_STREAM_KEY` - Key provided by twitch in your twitch dashboard. Format should be similar to `live_XXXXXXXX_XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX`

### Youtube

When setting up a new "Go Live" stream on youtube you should be given a streamkey at the time of stream creation or scheduling.
You need to provide the key in the variable defined below

`YOUTUBE_STREAM_KEY` - Format should be simliar to `XXXX-XXXX-XXXX-XXXX`. Provide the value given to you by youtube at the time of livestream creation.
