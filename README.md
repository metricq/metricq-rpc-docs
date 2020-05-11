Install the AsyncAPI autogenerator:

```sh
$ npm -g install @asyncapi/generator
```

then run

```sh
$ ag --force-write --output docs manager.asyncapi.yaml @asyncapi/html-template
```
finally, open `docs/index.html`.
