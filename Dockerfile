FROM waxcage/python-twisted:latest
MAINTAINER Wax Cage

# pychecker
COPY ./libs/pychecker-0.8.19.tar.gz /tmp/pychecker-0.8.19.tar.gz

RUN tar -xf /tmp/pychecker-0.8.19.tar.gz -C /tmp \
    && cd /tmp/pychecker-0.8.19 \
    && python /tmp/pychecker-0.8.19/setup.py install \
    && rm /tmp/pychecker-0.8.19.tar.gz \
    && rm -Rf /tmp/pychecker-0.8.19

# pyflakes
RUN pip install pyflakes

# twistedchecker
RUN git clone https://github.com/twisted/twistedchecker.git /tmp/twistedchecker \
    && cd /tmp/twistedchecker \
    && python setup.py install \
    && rm -Rf /tmp/twistedchecker

# pydoctor
RUN pip install pydoctor

# theseus twisted profiler
RUN pip install cython \
    && git clone https://github.com/flowroute/twisted-theseus.git /tmp/twisted-theseus \
    && cd /tmp/twisted-theseus \
    && python setup.py install \
    && rm -Rf /tmp/twisted-theseus

# appending .bash_aliases
COPY .bash_aliases /tmp/.waxcage_bash_aliases

RUN head -n 100 /tmp/.waxcage_bash_aliases >> /root/.bash_aliases \
    && rm /tmp/.waxcage_bash_aliases