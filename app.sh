echo "Hello from Jenkins"
build.sh
--------
#!/bin/sh
mkdir -p dist
cp app.sh dist/app.sh
echo "Build complete"
test.sh
-------
#!/bin/sh
out=$(sh dist/app.sh)
if [ "$out" = "Hello from Jenkins" ]; then
 echo "PASS"
else
 echo "FAIL"
 exit 1
fi
