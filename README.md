
MPC/MPD and Icecast2 Dockerfile

[![](http://dockeri.co/image/alastairhm/icecast)](https://index.docker.io/u/alastairhm/icecast/)

Based on https://github.com/moul/docker-icecast

## Run

Run with default password, export port 8000

```bash
docker run -p 8000:8000 -v <local music directory>:/var/lib/mpd/music alastairhm/icecast
$BROWSER localhost:8000
```

Run with custom password

```bash
docker run -p 8000:8000 -e ICECAST_SOURCE_PASSWORD=aaaa -e ICECAST_ADMIN_PASSWORD=bbbb -e ICECAST_PASSWORD=cccc -e ICECAST_RELAY_PASSWORD=dddd <local music directory>:/var/lib/mpd/music alastairhm/icecast
```

## License

[MIT](https://github.com/moul/docker-icecast/blob/master/LICENSE.md)
