cd wildfly_base && docker build --rm -t khhwtml02t.wanhai.com:8182/jboss/wildfly-base:latest . && \
docker push khhwtml02t.wanhai.com:8182/jboss/wildfly-base:latest && cd .. 
cd wildfly_tml && docker build --rm -t khhwtml02t.wanhai.com:8182/jboss/wildfly-tml:latest . && \
docker push khhwtml02t.wanhai.com:8182/jboss/wildfly-tml:latest && cd .. 
cd wildfly_tml_khhw && docker build --rm -t khhwtml02t.wanhai.com:8182/wanhai/tml/khhw/uat/tml-cy:latest . && \
docker push khhwtml02t.wanhai.com:8182/wanhai/tml/khhw/uat/tml-cy:latest && cd ..