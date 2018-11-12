## Injecting ENV vars at runtime to Create React App

Related to [this issue in CRA](https://github.com/facebook/create-react-app/issues/2353)
Can change REACT_APP_... env vars in docker-compose.yml and they will be inserted at container start.

It respects anything starting with REACT_APP_ in both .env and docker runtime environment

```docker-compose up```


## Notable changes

```<script type="text/javascript" src="config.js"></script>```
This is added in html head to ensure window object is populated before any other javascript runs.


env2js.js is run everytime before the server starts
First it reads the .env content into process.env without replacing anything already there
It then reformats all REACT_APP variables into javascript, and writes to a config.js in the build folder.

