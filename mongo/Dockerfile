# 1. Base Image
FROM mongo:4.4

COPY assets/mongodb.conf /etc/mongo/mongodb.conf

# 3. Start Command
CMD ["mongod", "--config", "/etc/mongo/mongodb.conf"]