## Setup code voor Mastodon and Plesk

Check out code and cd to ansible.
Run `ansible-playbook --ask-vault-pass run.yml`. This should give you everything you need.

You have to run mastodon setup:
```
cd /var/mastodon
docker-compose run --rm web bundle exec rake mastodon:setup
```

### Plesk tasks
Certificates

### Running tootctl commands
```
cd /var/mastodon
docker-compose run --rm web tootctl [command]
```

#### CAVEAT:
We overwrite the plesk-generated nginx config. Should Plesk overwrite that again, you can copy the file over from /var/mastodon and reload nginx (or use the included nginx.sh script).

### TODO:
- ~~postgresql backups~~
- ~~set public directory to be owned by mastodon user (uid/gid 991)~~
- ~~choose a better location on the filesystem -> have only files that need to be backed up in the Plesk webdir~~
- automate nginx config restorer after plesk wrote to it
- check if we can create certificates from the cli in plesk
