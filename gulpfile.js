"use strict";

var webpack = require("webpack");
var gulp = require("gulp");
var sass = require("gulp-sass");
var browserSync = require("browser-sync").create();
var settings = require("./settings");
var babel = require("gulp-babel");

sass.compiler = require("node-sass");

gulp.task("sass", function() {
  return gulp
    .src("./app/public/wp-content/themes/hibachichinese/css/*.scss")
    .pipe(sass().on("error", sass.logError))
    .pipe(gulp.dest("./app/public/wp-content/themes/hibachichinese"));
});

gulp.task("scripts", function(callback) {
  webpack(require("./webpack.config.js"), function(err, stats) {
    if (err) {
      console.log(err.toString());
    }

    console.log(stats.toString());
    callback();
  });
});

gulp.task("watch", function() {
  browserSync.init({
    notify: false,
    proxy: settings.urlToPreview,
    ghostMode: false
  });

  gulp.watch("./app/public/wp-content/themes/hibachichinese/css/**/*.scss", [
    "sass"
  ]);

  gulp.watch("./**/*.php", function() {
    browserSync.reload();
  });
  gulp.watch(settings.themeLocation + "css/**/*.scss", function() {
    browserSync.reload();
  });
  gulp.watch(
    [
      settings.themeLocation + "js/modules/*.js",
      settings.themeLocation + "js/scripts.js"
    ],
    ["waitForScripts"]
  );
});

gulp.task("waitForScripts", ["scripts"], function() {
  browserSync.reload();
});
