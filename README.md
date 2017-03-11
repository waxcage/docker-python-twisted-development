Docker image for twisted 16.1.0 on Python 2.7 with development tools

https://hub.docker.com/r/waxcage/python-twisted-development/

# Development tools
## PyChecker
- http://pychecker.sourceforge.net/
### Usage with twisted
- there is no adaptation for twisted, best you can do is pass all python files from your application. For this purpose you can use alias prepared inside docker container: `Tpychecker-directory` which takes one argument - path to directory containing python files.