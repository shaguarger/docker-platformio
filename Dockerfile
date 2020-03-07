FROM python:2.7
LABEL maintainer="Arne Wohlert <16501863+shaguarger@users.noreply.github.com>"

COPY tag /tag
RUN python -c "$(curl -fsSL https://raw.githubusercontent.com/platformio/platformio/$(cat /tag)/scripts/get-platformio.py)"
RUN rm /tag
RUN platformio platform update
