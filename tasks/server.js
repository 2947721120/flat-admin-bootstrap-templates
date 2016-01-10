var gulp = require("gulp");

gulp.task('dev-server', function() {
    browserSync.init({
        server: {
            baseDir: "./public/",
            index: "/html/index.html"
        }
    });
});
