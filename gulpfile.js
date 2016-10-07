var gulp = require('gulp');
var sass = require('gulp-sass');
var git = require('gulp-git');

gulp.task('s', function () {
  return gulp.src('source/css/site.scss')
    .pipe(sass.sync().on('error', sass.logError))
    .pipe(gulp.dest('source/css'));
});


gulp.task('git:add', ['s'], function() {
	return gulp.src('./')
		.pipe(git.add());
});

gulp.task('git:commit', ['git:add'], function() {
	return gulp.src('./')
		.pipe(git.commit('Update by gulp script.'));
});

gulp.task('git:push', ['git:commit'], function(){
  git.push('origin', 'master', function (err) {
    if (err) throw err;
  });
});

gulp.task('default', ['git:push']);