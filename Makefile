install:
	npm install gulp-cli --global
	npm init
	npm install gulp --save-dev
	npm install node-sass gulp-sass --save-dev
	npm install gulp-pug --save-dev
	npm install gulp-svg-sprite --save-dev
	npm install gulp-concat --save-dev
	npm install bootstrap --save-dev
	npm install jquery --save-dev
	npm install popper.js --save
	npm install surge --save-dev
	npm install htmlhint --save-dev
	npm install stylelint --save-dev
	npm install stylelint-config-standard --save-dev
	npm install stylelint-order --save-dev
	npm install stylelint-config-rational-order --save-dev
	npm install stylelint-scss --save-dev


# lint:
# 	npx stylelint ./src/styles/*.css
# 	npx htmlhint ./src/*.html

# deploy:
# 	npx surge ./src/
