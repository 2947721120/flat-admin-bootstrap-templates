var gulp = require("gulp"),
  sass = require("gulp-sass"),
  notify = require("gulp-notify"),
  plumber = require('gulp-plumber'),
  concat = require('gulp-concat');

gulp.task("style", function() {
  gulp.src(['./app/**/*.scss', '!./app/themes/**/*'])
    .pipe(plumber({errorHandler: notify.onError(
      {
        title: "SCSS Error: Line <%= error.line %>",
        message: "<%= error.message %>"
      })
    }))
    .pipe(sass().on('error', function(err) { console.log(err) }))
    .pipe(concat('style.css'))
    .pipe(gulp.dest('./public/css/'))
    .pipe(browserSync.stream())
});

gulp.task("theme", function() {
  gulp.src(['./app/themes/**/*.scss'])
    .pipe(plumber({errorHandler: notify.onError(
      {
        title: "SCSS Error: Line <%= error.line %>",
        message: "<%= error.message %>"
      })
    }))
    .pipe(sass().on('error', function(err) { console.log(err) }))
    .pipe(concat('theme.css'))
    .pipe(gulp.dest('./public/css/'))
    .pipe(browserSync.stream())
});
