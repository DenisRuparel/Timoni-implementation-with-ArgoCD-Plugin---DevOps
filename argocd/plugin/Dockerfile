FROM alpine:3.20

# Install dependencies
RUN apk add --no-cache \
    curl \
    bash \
    git

# Install Timoni
RUN curl -L https://github.com/stefanprodan/timoni/releases/latest/download/timoni-linux-amd64 \
    -o /usr/local/bin/timoni && \
    chmod +x /usr/local/bin/timoni

# Install CUE (required for Timoni)
RUN curl -L https://github.com/cue-lang/cue/releases/latest/download/cue_v0.9.0_linux_amd64.tar.gz \
    | tar -xz && mv cue /usr/local/bin/

# Verify installation
RUN timoni version && cue version

# Keep container running
CMD ["sleep", "infinity"]

#test change for plugin
