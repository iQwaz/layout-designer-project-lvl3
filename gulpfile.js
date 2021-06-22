//Создано на основе https://webdesign-master.ru/blog/tools/gulp-4-lesson.html

//Определяем константы Gulp
const { src, dest, parallel, series, watch } = require('gulp');

// Подключаем Browsersync
const browserSync = require('browser-sync').create();

// Определяем логику работы Browsersync
function browsersync() {
  browserSync.init({ // Инициализация Browsersync
    server: { baseDir: 'app/' }, // Указываем папку сервера
    notify: false, // Отключаем уведомления
    online: false // Режим работы: true или false
  })
}


function startwatch() {
  	// Мониторим файлы html на изменения
		watch('app/**/*.html').on('change', browserSync.reload);
}



	// Экспортируем функцию browsersync() как таск browsersync. Значение после знака = это имеющаяся функция.
	exports.browsersync = browsersync;

  // Экспортируем функцию startwatch
  exports.startwatch = startwatch;

  //"Экспорт для парраллельного исполнения"
  exports.default = parallel(browsersync, startwatch);