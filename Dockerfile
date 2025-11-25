FROM httpd
LABEL Author='Ramesh Aravind'
RUN echo "<h1>Hello World</h1>" > /usr/local/apache2/htdocs/index.html
CMD ["httpd-foreground"]
