Jenkins
====

brew install jenkins

install git plugins, restart jenkins

Build Triggers check Poll SCM and add a schedule of * * * * *
make clean && WRITE_JUNIT_XML=YES make test
Post-build Actions, check Publish JUnit test result report and enter the following in Test report XMLs:
build/test-results/*.xml
  
Test
====

make test

make test TEST="ExampleTest"
make test TEST="ExampleTest/testFoo"

http://gabriel.github.com/gh-unit/docs/appledoc_include/guide_command_line.html

Jenkins
====

http://gabriel.github.com/gh-unit/docs/appledoc_include/guide_ci.html
