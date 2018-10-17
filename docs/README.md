# IoT TV

## Introduction

TODO: add description here

## install

```shell
bundle install; yarn install; rails s
```
### Setup DB
To alter you're database schema you have to enter following command:
```shell
rails db:migrate
```
To seed the database with dummy-info:
```shell
rails db:seed
```
If you want to start with a brand new database, you can drop the database with:
```shell
rails db:drop:_unsafe
```
## Documentation

Make sure to have Vuepress installed on your system. Then in the root project directory run the following command:

```shell
vuepress dev docs/
```

Then you can surf to [http://localhost:8080](http://localhost:8080) to inspect the documentation.

