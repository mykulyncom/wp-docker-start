# Declare the WP_VER argument
ARG WP_VER
FROM wordpress:${WP_VER}

# Installing msmtp
RUN apt-get update && apt-get install -y msmtp && rm -rf /var/lib/apt/lists/*

# Setting up msmtp for Mailhog
RUN echo "account default" > /etc/msmtprc && \
	echo "host mailhog" >> /etc/msmtprc && \
	echo "port 1025" >> /etc/msmtprc && \
	echo "from wordpress@localhost" >> /etc/msmtprc && \
	echo "logfile /var/log/msmtp.log" >> /etc/msmtprc

# Configuring PHP to use msmtp
RUN echo "sendmail_path = /usr/bin/msmtp -t" > /usr/local/etc/php/conf.d/mail.ini
