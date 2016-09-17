var gulp = require('gulp');
var shell = require('gulp-shell');

gulp.task('git', shell.task([
  'git add . ',
  'git commit . -m \"Update by gulp script.\"',
  'git push origin master --force' 
]));

gulp.task('s', shell.task([
	'sass source/css/site.scss:source/css/site.css'
]));

gulp.task('sw', shell.task([
	'sass -w source/css/site.scss:source/css/site.css'
]));

gulp.task('upload', ['git', 's']);