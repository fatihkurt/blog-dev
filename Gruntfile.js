module.exports = function(grunt) {
	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),
		bower: {
			install: {
				options: {
					targetDir: 'web/vendor/bower_components',
					layout: 'byComponent',
					verbose: true,
					cleanup: true
				}
			}
		},
		browserify: {
			main: {
				options: {
					debug: true
				},
				src: 'frontend/src/app.js',
				dest: 'web/build/app.js'
			}
		}
	});

	grunt.loadNpmTasks('grunt-bower-task');

	grunt.loadNpmTasks('grunt-browserify');

	grunt.registerTask('default', ['bower:install', 'browserify']);
}
