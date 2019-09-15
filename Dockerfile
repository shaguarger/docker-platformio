FROM python:2.7
MAINTAINER Arne Wohlert <16501863+shaguarger@users.noreply.github.com>

RUN python -c "$(curl -fsSL https://raw.githubusercontent.com/platformio/platformio/develop/scripts/get-platformio.py)"
RUN platformio platform update
