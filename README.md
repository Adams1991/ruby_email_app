# README
Hello Folks,

This is a simple web app for sending emails via the browser. I used this to learn more about Ruby on Rails Ajax calls and Action Mailer.  

If you download it please create an file in the configs folder called application.yml with the below format. Add this file to the .gitignore so no one can steal your identity, use your Amazon prime etc.

defaults: &defaults
  GMAIL_EMAIL: 'your gmail email here'
  GMAIL_PASSWORD: 'your password here'

development:
  <<: *defaults

test:
  <<: *defaults

production:
  <<: *defaults


After that set up just run rails db:seeds followed by rail server then head to http://localhost:3000/. 
