'use strict'

BaseService = require 'scripts/BaseClasses/BaseService.coffee'

module.exports = class DistList extends BaseService

  initialize: ->

  getFlat: () ->
    flat = [
      name: 'Normal'
      value: 0
      x: ['integer', 'number', 'string']
      y: false
      z: false
      message: "This class designs a simple Normal Distribution fitting curve"
      xLabel: "Add x"

    ,
      name: 'Binomial'
      value: 1
      x: ['integer', 'number']
      y: false
      z: false
      message: "This class designs a Binomial Distribution fitting curve"
      xLabel: "Add x"

    ,
      name: 'Poisson'
      value: 2
      x: ['integer', 'number']
      y: false
      z: false
      message: "This class designs a Poisson Distribution fitting curve"
      xLabel: ""
    ,
      name: 'Polynomial'
      value: 2
      x: ['integer', 'number']
      y: false
      z: false
      message: "This class designs a Polynomial Distribution fitting curve"
      xLabel: ""




    ]


