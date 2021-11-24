FROM python:3
LABEL maintainer="Arne Wohlert <16501863+shaguarger@users.noreply.github.com>"

COPY tag /tag
RUN python -c "$(curl -fsSL https://raw.githubusercontent.com/platformio/platformio/$(cat /tag)/scripts/get-platformio.py)"
ENV PATH="/root/.platformio/penv/bin:${PATH}"
RUN rm /tag
RUN platformio platform update
