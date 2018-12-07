# IoT TV

## Introduction

Scheme of the project:

https://www.lucidchart.com/invitations/accept/8665dc71-bbc4-41dd-ba85-a4b4a371b3d0



## install
Run following commands to install this project.
```shell
bundle install; yarn;
```
!!! Workaround !!!
Vue is installed with npm and will give some issues after running above commands. Untill this bug is fixed run following command:
```shell
npm install
```
## Run app
```shell
rails s
```
## Setup DB
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

