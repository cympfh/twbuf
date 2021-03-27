# twbuf - TWitter BUFfer

```bash
# Append
$ echo Tweet >> buf.txt
```

```bash
# Tweet
$ bash ./unleash.sh buf.txt
```

```bash
$ make serve PORT=8080 &
$ curl -XPOST localhost:8080/twbuf --data '{"text": "Tweet"}'
```
