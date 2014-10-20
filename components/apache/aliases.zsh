#!/bin/zsh

export APACHE_CONF="/etc/apache2/httpd.conf"
export APACHE_CONF_DEV_PATH="$DIR_DEV/_.conf/apache"
alias apacheconf="e $APACHE_CONF"
alias apachedevconf="e $APACHE_CONF_DEV_PATH"
alias apacheconfigtest="apachectl configtest"
alias apachestart="sudo apachectl start"
alias apacherestart="flushdns && sudo apachectl restart"

alias apacheaddconf="e $APACHE_CONF_DEV_PATH/local.conf /etc/hosts"
