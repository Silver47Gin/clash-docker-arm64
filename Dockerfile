FROM node:16

WORKDIR /ui

RUN git clone https://github.com/Dreamacro/clash-dashboard.git \
  && cd clash-dashboard \
  && npm i && npm run build \
  && cp -R dist/* /ui \
  && cd /ui && rm -rf clash-dashboard

FROM dreamacro/clash

COPY --from=0 /ui /ui
