resolve: {
    // aliasを追加
    alias: {
      ‘vue$’: ‘vue/dist/vue.esm.js’
    },
    extensions: settings.extensions,
    modules: [
      resolve(settings.source_path),
      ‘node_modules’
    ]
  },