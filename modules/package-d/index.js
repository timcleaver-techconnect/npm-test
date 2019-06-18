const A = require('package-a')
const B = require('package-b')
const C = require('package-c')
const _ = require('underscore')

exports.d = function () {
  A.a()
  B.b()
  C.c()
  console.log('d')
  _.each([4, 8, 12], function (i) { console.log(i) })
}
