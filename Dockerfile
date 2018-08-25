# For reference only

FROM websphere-liberty
ADD target/RajanKoneAssesmentApp.war /opt/ibm/wlp/usr/servers/defaultServer/dropins/
ENV LICENSE accept
EXPOSE 9080

## Running the container locally
# mvn clean install
# docker build -t RajanKoneAssesmentApp:latest .
# docker run -d --name myjavacontainer RajanKoneAssesmentApp
# docker run -p 9080:9080 --name myjavacontainer RajanKoneAssesmentApp
# Visit http://localhost:9080/RajanKoneAssesmentApp/

## Push container to IBM Cloud
# Install cli and dependencies: https://console.ng.bluemix.net/docs/containers/container_cli_cfic_install.html#container_cli_cfic_install
# docker tag RajanKoneAssesmentApp:latest registry.ng.bluemix.net/<my_namespace>/RajanKoneAssesmentApp:latest
# docker push registry.ng.bluemix.net/<my_namespace>/RajanKoneAssesmentApp:latest
# bx ic images # Verify new image
