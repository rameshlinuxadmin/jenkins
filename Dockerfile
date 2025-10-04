FROM httpd:latest
LABEL Author='Ramesh Aravind'
RUN echo "Hello World" > /usr/local/apache2/htdocs/index.html
CMD ['httpd-foreground', '-D']
