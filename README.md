# How to set up AngularJS project

On first log in to VM default NodeJS version should be set.

```
nvm alias default 0.10
```

If this is not done on first login than each login must be followed by

```
nvm use 0.10
```

which will set NodeJS in the current session.

```
cd <angular-project-directory>
npm install --no-bin-links
npm install -g bower grunt-cli
bower update
```

If installing in project folder fails delete npm cache and node_modules.

```
npm cache clear
cd <angular-project-directory>
rm -rf node_modules
```
