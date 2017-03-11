FROM waxcage/python-twisted:latest
MAINTAINER Wax Cage

# installing pychecker
COPY ./libs/pychecker-0.8.19.tar.gz /tmp/pychecker-0.8.19.tar.gz

RUN tar -xf /tmp/pychecker-0.8.19.tar.gz -C /tmp \
    && cd /tmp/pychecker-0.8.19 \
    && python /tmp/pychecker-0.8.19/setup.py install \
    && rm /tmp/pychecker-0.8.19.tar.gz \
    && rm -Rf /tmp/pychecker-0.8.19

# appending .bash_aliases
COPY .bash_aliases /tmp/.waxcage_bash_aliases

RUN head -n 100 /tmp/.waxcage_bash_aliases >> /root/.bash_aliases \
    && rm /tmp/.waxcage_bash_aliases