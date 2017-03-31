'use strict'
# import module class
Module = require 'scripts/BaseClasses/BaseModule.coffee'

# export instance of new module
module.exports = modeler = new Module

# module id for registration
  id: 'socrat_analysis_anova'
# module components
  components:
    services:
      'socrat_analysis_anova_initService': require 'scripts/analysis/tools/Anova/AnovaInit.service.coffee'
      'socrat_analysis_anova_msgService': require 'scripts/analysis/tools/Anova/AnovaMsgService.service.coffee'
      'socrat_analysis_anova_startupService': require 'scripts/analysis/tools/Anova/AnovaStartupService.service.coffee'

    controllers:
      'ChartsSidebarCtrl': require 'scripts/analysis/charts/ChartsSidebarCtrl.controller.coffee'
      'AnovaMainCtrl': require 'scripts/analysis/tools/Anova/AnovaMainCtrl.controller.coffee'

    runBlock: require 'scripts/analysis/tools/Anova/AnovaRunBlock.run.coffee'


  state:
# module name to show in UI
    name: 'ANOVA Analysis'
    url: '/tools/anova'
    mainTemplate: require 'partials/analysis/tools/Anova/main.jade'
    sidebarTemplate: require 'partials/analysis/tools/Anova/sidebar.jade'
