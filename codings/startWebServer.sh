!#/bin/sh 
# Let's start web server.

echo $(systemctl start apache2);
echo $(systemctl start mysql);

# Check the Status simultaneously.

echo $(systemctl status apache2);
echo $(systemctl status mysql);
