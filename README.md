* Setting up the outreach portal

** Setting up database configuration
   + To setup database name edit the file =outreach-portal/scripts/db_config.sh= and change database_name variable value.
#+begin_src
database_name="your_database_name"
#+end_src

** Setting up email configuration
 + *Note:* If your using your own smtp server to send emails follow the below step otherwise ignore this step. 
 + Edit the file =outreach-portal/scripts/db_config.sh= and uncoment line =#echo      "define(\`SMART_HOST',\`smtp.admin.iiit.ac.in')" >> /etc/mail/sendmail.mc=
and define your smtp server domain address or ip_address
#+begin_src example
 + echo "define(\`SMART_HOST',\`smtp.mydomain.ac.in')" >> /etc/mail/sendmail.mc
#+end_src
