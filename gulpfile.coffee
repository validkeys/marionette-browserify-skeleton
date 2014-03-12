gulp        = require 'gulp'
coffee      = require 'gulp-coffee'
stylus      = require 'gulp-stylus'
path        = require 'path'
watch       = require 'gulp-watch'
connect     = require 'gulp-connect'
browserify  = require 'gulp-browserify'
rename      = require 'gulp-rename'

gulp.task 'connect', connect.server
  root: ['dist']
  port: 1337
  livereload: true
  open:
    browser: 'Google Chrome'

gulp.task 'coffee', ->
  gulp.src('./src/js/**/*.coffee', {read: false})
    .pipe(watch())
    .pipe(browserify())
    .pipe(rename('app.js'))
    .pipe(gulp.dest './dist/js/')
    .pipe(connect.reload())

gulp.task 'stylus', ->
  gulp.src './src/css/*.styl'
    .pipe(watch())
    .pipe(stylus())
    .pipe(
      gulp.dest './dist/css'
    )
    .pipe(connect.reload())

gulp.task 'copy', ->
  gulp.src './src/index.html'
    .pipe(watch())
    .pipe(gulp.dest './dist/')
    .pipe(connect.reload())
  gulp.src './src/images/*'
    .pipe(watch())
    .pipe(gulp.dest './dist/images')
    .pipe(connect.reload())

gulp.task 'default', ['connect','coffee','stylus','copy']
