var gulp = require("gulp"),
    coffee = require("gulp-coffee"),
    browserSync = require('browser-sync').create(),
    sass = require("gulp-sass");

gulp.task('coffee', function() {
  return gulp.src('./js/coffee/*.coffee')
    .pipe(coffee({bare: true}))
    .pipe(gulp.dest('./js/'))
    .pipe(browserSync.stream())
});

gulp.task("sass", function() {
  return gulp.src('./css/scss/*.scss')
    .pipe(sass())
    .pipe(gulp.dest('./css'));
});

gulp.task("watch", function() {
  gulp.watch('./js/**/*.coffee',['coffee']);
  gulp.watch('./css/**/*.scss',['sass']);
});

gulp.task('init-server', function() {
    browserSync.init({
        server: {
            baseDir: "./"
        }
    });
});

gulp.task('dev', ['sass','coffee','watch','init-server']);
