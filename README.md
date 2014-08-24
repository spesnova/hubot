# hubot (lita)
My Chat bot based on lita.

## GETTING STARTED

```bash
$ git clone https://github.com/spesnova/hubot.git && cd hubot
$ script/bootstrap
```

## CONFIGURATIONS
Every configuration is set via environment variables.

Using `.env`.

```
LITA_ADAPTER=shell
LITA_REDIS_HOST=127.0.0.1
LITA_REDIS_PORT=6379
```

Add environment variables with start command.

```bash
$ LITA_ADAPTER=slack bundle exec lita
```
