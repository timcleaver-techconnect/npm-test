all: build test package

build: build_a
build: build_b
build: build_c
build: build_d

build_a:
	cd modules/package-a && npm install

build_b:
	cd modules/package-b && npm install

build_c:
	cd modules/package-c && npm install

build_d:
	cd modules/package-d && npm install

test: test_a
test: test_b
test: test_c
test: test_d

test_a:
	cd modules/package-a && node main.js

test_b:
	cd modules/package-b && node main.js

test_c:
	cd modules/package-c && node main.js

test_d:
	cd modules/package-d && node main.js

package: package_a
package: package_b
package: package_c
package: package_d

package_a:
	cd modules/package-a && npm install --production && npm dedupe

package_b:
	cd modules/package-b && npm install --production && npm dedupe

package_c:
	cd modules/package-c && npm install --production && npm dedupe

package_d:
	cd modules/package-d && npm install --production && npm dedupe
