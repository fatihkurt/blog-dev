module.exports = function(grunt) {
	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),
		bower: {
			install: {
				options: {
					targetDir: 'web/lib',
					layout: 'byType',
			        install: true,
			        verbose: false,
			        cleanTargetDir: true,
			        cleanBowerDir: false,
			        bowerOptions: {}
				}
			}
		},
		browserify: {
			app: {
				files : { 'web/build/app.js' : ['frontend/src/app.js'] }
			}
		},
		uglify: {
			build_target: {
				files: {
					'web/build/app.min.js': ['web/build/app.js']
				}
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

	grunt.loadNpmTasks('grunt-contrib-uglify');

	grunt.registerTask('default', ['bower:install', 'browserify', 'less', 'uglify']);
}
