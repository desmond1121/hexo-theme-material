var gulp = require('gulp');
var sass = require('gulp-sass');
var git = require('gulp-git');

gulp.task('git:add', function() {
	return gulp.src('./')
		.pipe(git.add());
});

gulp.task('git:commit', function() {
	return gulp.src('./')
		.pipe(git.commit('Update by gulp script.'))
		.on('end', function() {
			git.push('origin', 'master', {args: " -f"}, function (err) {
		    if (err) throw err;
		  });
		});
});

gulp.task('git', ['git:add', 'git:commit']);

gulp.task('s', function () {
  return gulp.src('source/css/site.scss')
    .pipe(sass.sync().on('error', sass.logError))
    .pipe(gulp.dest('source/css'));
});

gulp.task('upload', ['s', 'git']);