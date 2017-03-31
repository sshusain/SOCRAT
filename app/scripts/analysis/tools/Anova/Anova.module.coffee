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
      'socrat_analysis_anova_initService': require 'scripts/analysis/tools/Modeler/AnovaInit.service.coffee'
      'socrat_analysis_anova_msgService': require 'scripts/analysis/tools/Modeler/AnovaMsgService.service.coffee'
      'socrat_analysis_anova_startupService': require 'scripts/analysis/tools/Modeler/AnovaStartupService.service.coffee'

    controllers:
      'ModelerMainCtrl': require 'scripts/analysis/tools/Modeler/ModelerMainCtrl.ctrl.coffee'
      'ModelerSidebarCtrl': require 'scripts/analysis/tools/Modeler/ModelerSidebarCtrl.ctrl.coffee'

    directives:
      'modelerdir': require 'scripts/analysis/tools/Modeler/ModelerDir.directive.coffee'


  state:
# module name to show in UI
    name: 'ANOVA Analysis'
    url: '/tools/anova'
    mainTemplate: require 'partials/analysis/tools/Anova/main.jade'
    sidebarTemplate: require 'partials/analysis/tools/Anova/sidebar.jade'
