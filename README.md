# init script for Remote Container

Alpine Linux に wget が preinstall されているため，script 取得に wget を使用しています．

## base development environment

### alpine
```
wget -O - https://raw.githubusercontent.com/yn-git/init-script/master/dev_env/alpine_init.sh | sh -s
```

## Language

### Python
```
wget -O - https://raw.githubusercontent.com/yn-git/init-script/master/python/init.sh | sh -s
```