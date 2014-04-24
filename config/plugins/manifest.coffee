module.exports = (lineman) ->
  baseConfig = lineman.config.application

  config:
    loadNpmTasks: baseConfig.loadNpmTasks.concat('grunt-manifest')

    manifest:
      dev:
        options:
          basePath: 'generated'
          network: '<%= files.manifest.network %>'
          preferOnline: true
          verbose: true
          timestamp: true
          revision: true
          hash: true
        src: '<%= files.manifest.source %>'
        dest: 'generated/<%= files.manifest.appcache %>'
      dist:
        options:
          basePath: 'dist'
          network: '<%= files.manifest.network %>'
          preferOnline: true
          verbose: true
          timestamp: true
          revision: true
          hash: true
        src: '<%= files.manifest.source %>'
        dest: 'dist/<%= files.manifest.appcache %>'

    # watch:
    #   manifest:
    #     files: [
    #       'generated/**/*.*'
    #       '!generated/manifest.appcache'
    #     ]
    #     tasks: ['manifest:dev']
