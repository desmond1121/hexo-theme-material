var gulp = require('gulp');
var sass = require('gulp-sass');
var shell = require('gulp-shell');

gulp.task('git', shell.task([
  'git add . ',
  'git commit . -m \"Update by gulp script.\"',
  'git push origin master --force' 
]));

gulp.task('s', function () {
  return gulp.src('source/css/site.scss')
    .pipe(sass().on('error', sass.logError))
    .pipe(gulp.dest('source/css'));
});

gulp.task('sw', shell.task([
	'sass -w source/css/site.scss:source/css/site.css'
]));

gulp.task('upload', ['s', 'git']);