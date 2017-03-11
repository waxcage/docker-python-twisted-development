Docker image for twisted 16.1.0 on Python 2.7 with development tools

https://hub.docker.com/r/waxcage/python-twisted-development/

# Development tools
## Code analysis
### Twistedchecker
- https://github.com/twisted/twistedchecker

Best code analysis for twisted applications.

### PyChecker
- http://pychecker.sourceforge.net/

There is no specific usage for twisted, best you can do is pass all python files from your application. For this purpose you can use alias prepared inside docker container: `Tpychecker-directory` which takes one argument - path to directory containing python files.

### Pyflakes
- https://pypi.python.org/pypi/pyflakes

Less capable than PyChecker, but does not execute python executables on the other hand, so its safer and faster.