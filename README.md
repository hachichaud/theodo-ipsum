# Atom Angular Boilerplate
> Starter kit with our best practices

[![Dependencies](http://img.shields.io/gemnasium/atom-angular/boilerplate.svg?style=flat)](https://gemnasium.com/atom-angular/boilerplate)

### Build

```bash
# Install npm + bower dependencies and then build
npm install
# Launch the watcher + livereload
npm start
# http://localhost:8000
```

### Livereload

[Chrome extention](https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei)

### Tests

```bash
# Unit tests - Karma + mocha + chai
npm run test:unit

# Functional tests - Protractor + chai + cucumber
# Available options:
# HOST     -> http://localhost:8000
# BROWSER  -> chrome | firefox | phantomjs
# SELENIUM -> http://127.0.0.1:4444/wd/hub
# You need specify a selenium server or to install one with!
node_modules/.bin/webdriver-manager update
HOST=http://localhost:8000 BROWSER=chrome npm run test:functional
npm run test:functional
```
