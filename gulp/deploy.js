'use strict';

var gulp = require('gulp');
var $ = require('gulp-load-plugins')({
    pattern: ['gulp-*', 'main-bower-files', 'uglify-save-license', 'del']
});

module.exports = function (options) {
    gulp.task('deploy', function () {
        return gulp.src([options.dist + '/**/*'])
            .pipe(gulp.dest(options.nginx));
    });
};

