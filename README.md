Docker image for twisted 16.1.0 on Python 2.7 with development tools

https://hub.docker.com/r/waxcage/python-twisted-development/

# Development tools
## Code analysis
### Twistedchecker
- https://github.com/twisted/twistedchecker

Best code analysis for twisted applications.

### PyChecker
- http://pychecker.sourceforge.net/

There is no specific usage for twisted, best you can do is pass all python files from your application. For this purpose you can use alias prepared inside docker container: `Wpychecker-directory` which takes one argument - path to directory containing python files.

### Pyflakes
- https://pypi.python.org/pypi/pyflakes

Less capable than PyChecker, but does not execute python executables on the other hand, so its safer and faster.

### PyDoctor
- https://github.com/twisted/pydoctor

Api analyzer a documentation generator

## Profiling

### Twisted built-in profiler
Generates profiles in hotshot format (not very informative). Use `Wtwisted-profile-hotshot-format` for twisted built-in profiler.

### Theseus profiler
- https://github.com/flowroute/twisted-theseus

3rd party profiler developed for twisted. Generates profiles in callgrind format (very informative). Can be opened with kcachegrind. Requires tiny source code modification.


## Aliases

Development runtime environment comes with set of usefull aliases for many frequent operations. See all prepared aliases by typing letter W (uppercase) and pressing TAB multiple times.