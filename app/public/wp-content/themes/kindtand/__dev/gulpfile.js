// Require gulp and plugins
var gulp            = require('gulp');

// Define file sources
var projectPath     = "./", // path for the source files
    webPath         = projectPath + "../", // path for the website - usually path to livereload views, and used for distPath
    vendorPath      = projectPath + "node_modules/", // path for vendor scripts
    distPath        = webPath + "__dist/"; // path for production files

    const { src, dest, parallel, watch } = require('gulp')
    const rename        = require('gulp-rename')
    const sass          = require('gulp-sass')
    const minifyCSS     = require('gulp-csso')
    const concat        = require('gulp-concat')
    const livereload    = require('gulp-livereload')
    const babel         = require('gulp-babel')
    const sourcemaps    = require('gulp-sourcemaps')
    const uglify        = require('gulp-uglify')
    const strip         = require('gulp-strip-comments')
    const svgSprite     = require('gulp-svg-sprite')
    const imagemin      = require('gulp-imagemin')

function css() {
  return src([projectPath + 'css/master.scss'])
    .pipe(sourcemaps.init())
    .pipe(sass().on('error', sass.logError))
    .pipe(minifyCSS())
    .pipe(concat('master.min.css'))
    .pipe(sourcemaps.write('.'))
    .pipe(dest(distPath + 'css'))
    .pipe(livereload())
}

function blocks() {
    return src([projectPath + 'css/master-blocks.scss'])
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(minifyCSS())
        .pipe(concat('master-blocks.min.css'))
        .pipe(sourcemaps.write('.'))
        .pipe(dest(distPath + 'admin'))
        .pipe(livereload())
}

function js() {
    const jsFiles = [
        // Components
        projectPath + 'scripts/components/**/*.js',
        // Master
        projectPath + 'scripts/master.js'
    ];

    return src(jsFiles)
      .pipe(sourcemaps.init())
      .pipe(
         babel({
            presets: [
               [
                  '@babel/preset-env',
                  {
                     targets: {
                        browsers: [
                           '>0.25%',
                           'ie 11',
                           'last 4 versions',
                           'Firefox ESR',
                           'not ie < 9',
                        ],
                     },
                     corejs: 2,
                     modules: false,
                     useBuiltIns: 'entry',
                  },
               ],
            ],
         })
      )
      .pipe(strip())
      .pipe(concat('master.min.js'))
      .pipe(uglify())
      .pipe(sourcemaps.write('.'))
      .pipe(dest(distPath + 'scripts'))
      .pipe(livereload())
}

function vendors() {
    const jsVendors = [
        // Vendors
        vendorPath + "svg4everybody/dist/svg4everybody.js",
        // Libs
        projectPath + "scripts/libs/**/*.js"
    ];

    return src(jsVendors)
      .pipe(sourcemaps.init())
      .pipe(strip())
      .pipe(concat('vendor.min.js'))
      .pipe(uglify())
      .pipe(sourcemaps.write('.'))
      .pipe(dest(distPath + 'scripts'))
}

function icons() {
  var spriteConfig = {
      shape : {
          // Set maximum dimensions
          dimension       : {
              maxWidth    : 32,
              maxHeight   : 32
          },
          // Convert style to attributes
          transform : [
              {svgo       : {
                  plugins : [
                      { removeStyleElement  : true },
                      { removeAttrs: {attrs: '(fill.*|stroke.*|transform.*)'} }
                  ]
              }}
          ],
      },
      mode : {
          symbol : true
      }
  };

  return src(projectPath + 'icons/**/*.svg')
      .pipe(svgSprite(spriteConfig))
        .pipe(rename('icons.svg'))
      .pipe(dest(distPath + 'icons'))
}

function images() {
    const image_paths = [
        projectPath + 'images/**/*.jpg',
        projectPath + 'images/**/*.jpeg',
        projectPath + 'images/**/*.png',
        projectPath + 'images/**/*.svg'
    ];

    return src(image_paths)
        .pipe(imagemin({
            interlaced: true,
            progressive: true,
            optimizationLevel: 5,
            svgoPlugins: [{
                removeViewBox: true
            }]
        }))
        .pipe(dest(distPath + 'images'))
}

// Copying font files to dist
function fonts() {
    return src(projectPath + 'fonts/**/*').pipe(dest(distPath + 'fonts'));
}

function watchers() {
   livereload.listen()
   watch('css/**/*.scss', css)
   watch('css/**/*.scss', blocks)
   watch('scripts/**/*.js', js)
   watch('icons/**/*.svg', icons)
   watch('images/**/*', images)
   watch('../**/*.php')
}
exports.watchers = watchers
exports.js = js
exports.vendors = vendors
exports.css = css
exports.blocks = blocks
exports.icons = icons
exports.images = images
exports.fonts = fonts
exports.default = parallel(
   css,
   blocks,
   js,
   vendors,
   icons,
   images,
   fonts,
   watchers
)