'use strict'

BaseCtrl = require 'scripts/BaseClasses/BaseController.coffee'

module.exports = class AnovaMainCtrl extends BaseCtrl
  @inject '$scope'

  initialize: ->
    @chartData = null

    @$scope.$on 'charts:updateGraph', (event, data) =>
      @chartData = data
