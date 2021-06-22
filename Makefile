install:
	npm install gulp-cli --global
	npm install -g sass
	npm install


lint:
	npx stylelint ./app/scss/**/*.scss
	npx htmlhint ./app/*.html

# deploy:
# 	npx surge ./src/
