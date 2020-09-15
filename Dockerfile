FROM nginx:1.19

# Adds the template
ADD ./default.conf.template /etc/nginx/templates/default.conf.template
