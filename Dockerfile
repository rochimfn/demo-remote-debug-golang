FROM golang:1.23 AS builder
WORKDIR /opt/demo
COPY . .
RUN go build .

FROM ubuntu:noble AS runner
WORKDIR /opt/demo
COPY --from=builder /opt/demo/demo-remote-debug-golang .
COPY scripts/entry-point.sh .
CMD ["./entry-point.sh"]