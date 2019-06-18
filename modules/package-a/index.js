const _ = require('underscore')

exports.a = function () {
  console.log('a')
  _.each([1, 2, 3], function (i) { console.log(i) })
}
