# Simple proxy tests

Usage:

```bash
./<test> --help
```

## Params

- `--port` - port that local proxy is listening on. Default: 8080.
- `--url` - port that local proxy is listening on. Default: 'http://ascii.textfiles.com/'.
- `--requests` - number of requests. Default: 10.
- `--timeout` - curl timeout (see `curl --max-time`). Default: 5.
- `--concurrency` - number of parallel requests if available for test. Default: 10.

## Examples

```bash
./1-sequential-test.sh --port 9000 --url http://xcal1.vodafone.co.uk/5MB.zip --requests 10 --timeout 60
```
```bash
./2-concurrent-test.sh --port 9000 --url http://weather.nsu.ru/ --requests 50 --timeout 10 --concurrency 20
```
```bash
./3-cache-invalidation.sh --port 9000 --url http://ascii.textfiles.com/ --requests 10 --timeout 10
```
```bash
./4-parallel-clients.sh --port 9000 --url http://68k.news/ --requests 500 --timeout 10
```
