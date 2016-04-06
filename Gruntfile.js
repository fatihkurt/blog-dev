module.exports = function(grunt) {
	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),
		bower: {
			install: {
				options: {
					targetDir: 'web/vendor/bower_components',
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
		},
		less: {
            production: {
                options: {
                    paths: ['web/build/'],
                    cleancss: true
                },
                files: {
                    'web/build/main.css': 'frontend/src/less/main.less'
                }
            }
        }
	});

	grunt.loadNpmTasks('grunt-bower-task');

	grunt.loadNpmTasks('grunt-browserify');

	grunt.loadNpmTasks('grunt-contrib-less');

	grunt.registerTask('default', ['bower:install', 'browserify', 'less']);
}
