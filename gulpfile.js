var gulp = require('gulp');
var sass = require('gulp-sass');
var git = require('gulp-git');

gulp.task('git', function() {
	return gulp.src('./')
		.pipe(git.add())
		.pipe(git.commit('Upload by gulp script.'))
		.pipe(git.push('origin', 'master', {args: " -f"}, function (err) {
	    if (err) throw err;
	  }));
});

gulp.task('s', function () {
  return gulp.src('source/css/site.scss')
    .pipe(sass.sync().on('error', sass.logError))
    .pipe(gulp.dest('source/css'));
});

gulp.task('upload', ['s', 'git']);