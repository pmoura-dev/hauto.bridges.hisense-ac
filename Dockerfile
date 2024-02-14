FROM deiger/aircon:0.3.17

ENV OPTIONS_FILE=/config/options.json

ADD host.patch full_status.patch /app/
RUN patch /app/aircon/__main__.py /app/host.patch
RUN patch /app/aircon/aircon.py /app/full_status.patch

# ADD options.json /config/

CMD [ "/run.sh" ]
