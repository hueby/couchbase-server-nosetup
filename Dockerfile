FROM couchbase:enterprise-6.0.1

ENV MEMORY_QUOTA 256
ENV INDEX_MEMORY_QUOTA 256
ENV FTS_MEMORY_QUOTA 256

ENV SERVICES "kv,n1ql,index,fts"

ENV USERNAME "Administrator"
ENV PASSWORD "password"

ENV CLUSTER_HOST ""
ENV CLUSTER_REBALANCE ""

COPY entrypoint.sh /config-entrypoint.sh

ENTRYPOINT ["/config-entrypoint.sh"]
