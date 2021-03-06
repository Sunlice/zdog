bundle:
	cat js/boilerplate.js js/canvas-renderer.js js/svg-renderer.js js/vector.js \
			js/anchor.js js/dragger.js js/illustration.js js/path-command.js \
			js/shape.js js/group.js js/rect.js js/rounded-rect.js js/ellipse.js \
			js/polygon.js js/hemisphere.js js/cylinder.js js/cone.js js/box.js \
			js/index.js > dist/zdog.dist.js

uglify:
	npx uglifyjs dist/zdog.dist.js -o dist/zdog.dist.min.js --mangle --comments /^!/

lint:
	npx jshint js/*.js demos/**/*.js tasks/*.js

dist: bundle uglify
