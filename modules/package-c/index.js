const A = require('package-a')
const B = require('package-b')
const _ = require('underscore')

exports.c = function () {
  A.a()
  B.b()
  console.log('c')
  _.each([3, 6, 9], function (i) { console.log(i) })
}
