var gulp = require('gulp'),
    fileinclude = require('gulp-file-include');

gulp.task('html', function() {

  // Copy Lib to Public
  gulp.src(['./node_modules/jquery/**/*',]).pipe(gulp.dest('./public/lib/jquery'))
  gulp.src(['./node_modules/bootstrap/**/*',]).pipe(gulp.dest('./public/lib/bootstrap'))
  gulp.src(['./node_modules/font-awesome/**/*',]).pipe(gulp.dest('./public/lib/font-awesome'))
  gulp.src(['./node_modules/chartist/**/*',]).pipe(gulp.dest('./public/lib/chartist'))
  gulp.src(['./node_modules/awesome-bootstrap-checkbox/**/*',]).pipe(gulp.dest('./public/lib/awesome-bootstrap-checkbox'))
  gulp.src(['./node_modules/jquery-match-height/**/*',]).pipe(gulp.dest('./public/lib/jquery-match-height'))
  gulp.src(['./bower_components/checkbox3/**/*',]).pipe(gulp.dest('./public/lib/checkbox3'))
  gulp.src(['./node_modules/datatables/**/*',]).pipe(gulp.dest('./public/lib/datatables'))

  return gulp.src(['./app/**/*.html', '!./app/include/*.html'])
    .pipe(fileinclude({
      prefix: '@@',
      basepath: '@file'
    }))
    .pipe(gulp.dest('./public/html/'))
    .pipe(browserSync.stream())
});
