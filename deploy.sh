#!/usr/bin/env bash

echo "creating symbol link for ngnix configuration..."
sudo ln -l /home/box/ask/etc/frontend_ngnix.conf /etc/nginx/conf.d/frontend_ngnix.conf
echo "current status:"
sudo /etc/inid.d/ngnix status
echo "validation config..."
sudo nginx -t
echo "restating ngnix..."
sudo /etc/inid.d/ngnix restart
echo "current status:"
sudo /etc/inid.d/ngnix status

echo "creating symbol link for gunicorn configuration..."
sudo ln -l /home/box/ask/etc/backend_config.py /etc/gunicorn.d/backend_config
echo "current status:"
sudo /etc/init.d/nginx status
echo "restating gunicorn..."
sudo /etc/inid.d/ngnix restart
echo "current status:"
sudo /etc/inid.d/ngnix status
