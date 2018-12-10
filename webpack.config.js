const path = require("path"),
  settings = require("./settings");

module.exports = {
  entry: {
    App: settings.themeLocation + "js/scripts.js"
  },
  output: {
    path: path.resolve(__dirname, settings.themeLocation + "js"),
    filename: "scripts-bundled.js"
  },
  mode: "development"
};
