module.exports = (lineman) ->
    files:
        manifest:
            source: [
              '**/*.*'
              '!**/manifest.appcache'
            ]
            network: [
                'http://*'
                'https://*'
            ]
            appcache: 'manifest.appcache'
