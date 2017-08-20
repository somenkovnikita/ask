#!/usr/bin/env bash

echo "creating symbol link for nginx configuration..."
sudo ln -l /home/box/ask/etc/frontend_nginx.conf /etc/nginx/conf.d/frontend_nginx.conf
echo "current status:"
sudo /etc/inid.d/nginx status
echo "validation config..."
sudo nginx -t
echo "restating ngnix..."
sudo /etc/inid.d/nginx restart
echo "current status:"
sudo /etc/inid.d/nginx status

echo "creating symbol link for gunicorn configuration..."
sudo ln -l /home/box/ask/etc/backend_config.py /etc/gunicorn.d/backend_config
echo "current status:"
sudo /etc/init.d/gunicorn status
echo "restating gunicorn..."
sudo /etc/inid.d/gunicorn restart
echo "current status:"
sudo /etc/inid.d/gunicorn status
