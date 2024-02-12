FROM deiger/aircon:0.3.17

ENV OPTIONS_FILE=/config/options.json

ADD host.patch /app
RUN patch /app/aircon/__main__.py /app/host.patch

# ADD options.json /config/

CMD [ "/run.sh" ]
