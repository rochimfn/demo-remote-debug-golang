FROM golang:1.23 AS builder
WORKDIR /opt/demo
COPY . .
RUN go install github.com/go-delve/delve/cmd/dlv@v1.24.0
RUN go build -gcflags='all=-N -l' .

FROM ubuntu:noble AS runner
WORKDIR /opt/demo
COPY --from=builder /opt/demo/demo-remote-debug-golang .
COPY --from=builder /go/bin/dlv .
COPY scripts/entry-point.sh .
CMD ["./entry-point.sh"]