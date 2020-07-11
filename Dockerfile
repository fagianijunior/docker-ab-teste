FROM alpine:3.11
LABEL Maintainer="Carlos Fagiani Junior" \
      Description="Teste Apache Bench with Alpine Linux."

# Install packages
RUN apk --no-cache add curl

# Setup document root
RUN mkdir -p /tmp/ab

# Make sure files/folders needed by the processes are accessable when they run under the nobody user
RUN chown -R nobody.nobody /tmp/ab && \
    chown -R nobody.nobody /run

# Switch to use a non-root user from here on
USER nobody

# Add application
WORKDIR /tmp/ab
COPY --chown=nobody . /tmp/ab/

RUN chmod +x /tmp/ab/ab_test.sh

CMD /tmp/ab/ab_test.sh