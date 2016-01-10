var gulp = require("gulp"),
  coffee = require("gulp-coffee"),
  notify = require("gulp-notify"),
  plumber = require('gulp-plumber'),
  concat = require('gulp-concat');

gulp.task("ui-coffee", function() {
  return gulp.src(['./app/include/**/*.coffee','./app/uikits/**/*.coffee','./app/elements/**/*.coffee', './app/ui.coffee'])
    .pipe(plumber({errorHandler: notify.onError(
      {
        title: "Coffee Error: Line <%= error.location.first_line %>",
        message: "<%= error.name %>:<%= error.message %>"
      })}))
    .pipe(coffee({bare: true}))
    .pipe(concat('app.js'))
    .pipe(gulp.dest('./public/js/'))
    .pipe(browserSync.stream())
});

gulp.task("page-coffee", function() {
  return gulp.src(['./app/pages/**/*.coffee', './app/table/**/*.coffee'])
    .pipe(plumber({errorHandler: notify.onError(
      {
        title: "Coffee Error: Line <%= error.location.first_line %>",
        message: "<%= error.name %>:<%= error.message %>"
      })}))
    .pipe(coffee({bare: true}))
    .pipe(gulp.dest('./public/js/'))
    .pipe(browserSync.stream())
});
