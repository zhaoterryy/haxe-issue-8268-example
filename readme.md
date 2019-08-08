Example for https://github.com/HaxeFoundation/haxe/issues/8268.

Open index.html locally and check console output. The request URL is remote (https://httpstat.us/418) but `haxe.Http.HttpJs` treats it as local, therefore obscuring the real response status code. `200` is returned rather than `418`.

Cli command used to compile: `haxe HttpStatusExample.hx -js test.js -main HttpStatusExample -dce full`