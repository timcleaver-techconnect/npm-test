const A = require('package-a')
const _ = require('underscore')

exports.b = function () {
  A.a()
  console.log('b')
  _.each([2, 4, 6], function (i) { console.log(i) })
}
