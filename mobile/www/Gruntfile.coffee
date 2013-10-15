module.exports = (grunt) ->
    grunt.initConfig
        less:
            development:
                options:
                  paths: ["../../app/less"]
                files:
                  "./css/index.css": "../../app/less/index.less"
              production:
                options:
                  paths: ["../../app/less"],
                  yuicompress: true
                files:
                  "./css/index.css": "../../app/less/index.less"
            
        coffee:
            compileSpecs: 
                options: { bare: true },
                expand: true,
                flatten: true,
                cwd: '../../app/coffee/spec',
                src: ['*.spec.coffee'],
                dest: './test',
                ext: '.spec.js'
            compile: 
                options: { bare: true },
                expand: true,
                flatten: true,
                cwd: '../../app/coffee',
                src: ['*.coffee'],
                dest: './js',
                ext: '.js'

    grunt.loadNpmTasks 'grunt-contrib-less'
    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.registerTask 'default', ['less', 'coffee']
