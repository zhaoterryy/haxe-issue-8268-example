class HttpStatusExample {
    static function main() {
        var request = new haxe.Http("https://httpstat.us/418");

        request.onStatus = status -> {
            trace('[STATUS: $status] should be 418');
        }

        request.request();
    }
}
