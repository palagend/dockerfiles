FROM cfssl/cfssl
COPY config /etc/cfssl/config
CMD ["serve","-ca-key","/etc/cfssl/config/ca-key.pem","-ca","/etc/cfssl/config/ca.pem","-config","/etc/cfssl/config/ca-config.json","-address","0.0.0.0","-port","8888"]
