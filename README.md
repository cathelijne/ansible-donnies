Setup code voor Mastodon and Plesk

Check out code and cd to ansible.
Run `ansible-playbook --ask-vault-pass run.yml`. This should give you everything you need.

You have to run mastodon setup:
```
cd /var/mastodon
docker-compose run --rm web bundle exec rake mastodon:setup
```

Running tootctl commands
```
cd /var/mastodon
docker-compose run --rm web tootctl [command]
```

CAVEAT:
We overwrite the plesk-generated nginx config. Should Plesk overwrite that again, you can copy the file over from /var/mastodon and reload nginx (or use the included nginx.sh script).

TODO:
I couldn't get Plesk to get LE certificates. Also, the mailserver requires a password, but it won't accept the one I used when creating the mail user.
