# node-ubuntu
Node.js in ubuntu

# How to use

docker build -t tag:version --force-rm https://github.com/hbthlw/node-ubuntu.git

## Docker Run

Here is an example of how you would run a default Node.JS Docker Containerized application:

```
$ docker run \
  -e "NODE_ENV=production" \
  -u "node" \
  -m "300M" --memory-swap "1G" \
  -w "/home/node/app" \
  --name "my-nodejs-app" \
  node [script]
```

```
docker run -d -p 49038:3000 -m 4g --cpuset-cpus 0-3 --restart=always --volume="$(pwd)":/usr/src/app hbthlw/node-ubuntu
```

