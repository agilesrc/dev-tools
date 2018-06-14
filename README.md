# Common Development tools

To build the project run

```
docker build --tag agilesrc/dev-tools .
```

## Tools included are

### Node.js

Node.js version 9. When using npm the ~/.npm directory can optionally be mapped to the containers /root/.npm

To use node/npm run commands 
```
docker run --rm -v ~/.npm:/root/.npm -v `pwd`:/work agilesrc/dev-tools npm --version
```


### AWS CLI

AWS CLI. When using aws the ~/.aws directory can optionally be mapped to the containers /root/.aws

To use node/npm run commands 
```
docker run --rm -v `pwd`:/work agilesrc/dev-tools aws --version
```

### AWS SAM Local

AWS SAM Local CLI. When using aws the ~/.aws directory can optionally be mapped to the containers /root/.aws

To use node/npm run commands 
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/work agilesrc/dev-tools sam --version
```
