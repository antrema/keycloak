FROM quay.io/keycloak/keycloak:17.0.0

USER root

COPY antrema-cassl.pem /usr/share/pki/ca-trust-source/anchors/antrema-cassl.pem
COPY antrema-caroot.pem /usr/share/pki/ca-trust-source/anchors/antrema-caroot.pem

RUN update-ca-trust
#    keytool -import -noprompt -cacerts -trustcacerts -file /usr/share/pki/ca-trust-source/anchors/antrema-cassl.pem -storepass changeit && \
#    keytool -import -noprompt -cacerts -trustcacerts -file /usr/share/pki/ca-trust-source/anchors/antrema-caroot.pem -storepass changeit && \

USER keycloak