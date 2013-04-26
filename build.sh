#! /bin/bash
type uglifyjs >/dev/null 2>&1 || { echo >&2 "I require uglifyjs to run (npm install uglify-js -g) but it's not installed.  Aborting."; exit 1; } 

PluginDir='./plugins/';
Plugins=('ki.selector.js');

PluginsPlain=$(printf " ${PluginDir}%s" "${Plugins[@]}")
PluginsPlain=${PluginsPlain:1}

uglifyjs -o './ki.plugins.min.js' ${PluginsPlain}
