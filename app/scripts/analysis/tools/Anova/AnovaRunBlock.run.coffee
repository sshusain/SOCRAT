'use strict'
module.exports = class AnovaRunBlock
  constructor: (@module) ->
  register: ->
    @module.run @AnovaRunBlock()
  AnovaRunBlock: ->
    runBlock = (socrat_analysis_anova_myService) ->
      socrat_analysis_anova_myService.showAlert()
    # inject dependencies for run block
    runBlock.$inject = ['socrat_analysis_anova_myService']
    runBlock
