var gulp = require('gulp');
var shell = require('gulp-shell');

gulp.task('gh', shell.task([
  'git add . ',
  'git commit . -m \"Update by Desmond\"',
  'git push origin master' 
]));
