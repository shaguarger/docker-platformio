FROM python:3
LABEL maintainer="Arne Wohlert <16501863+shaguarger@users.noreply.github.com>"

COPY tag /tag
RUN python -c "$(curl -fsSL -o get-platformio.py https://raw.githubusercontent.com/platformio/platformio-core-installer/master/get-platformio.py)"
ENV PATH="/root/.platformio/penv/bin:${PATH}"
RUN rm /tag
RUN platformio platform update
