var gulp = require('gulp');
var shell = require('gulp-shell');

gulp.task('gh', shell.task([
  'git add . ',
  'git commit . -m \"Update by gulp script.\"',
  'git push origin master --force' 
]));

gulp.task('sw', shell.task([
	'sass -w source/css/site.scss:source/css/site.css'
]));
