# TvSimulator

## What does it do?
The TvSimulator was built for usage and testing at home.
Normally we could only test the working of our project if we were in lab 2.85,
because the Led Television is situated over there.
This TvSimulator 'simulates' the working of the Led Television, if you send a 
request, you will get a 204 response if it was successfull; you will get a 400 
error warning it it failed.

## Working
The usage of the TvSimulator is pretty simple.
Go to the Iot-TV project and setup the server with the command: `rails s`.
Get inside your Base64Post and type `ruby ./ruby.rb`.
Look in your powershell window of the Iot-TV project to see if your request was 
succesfull or if it failed.
That's it!

## Error/Warnings
If you get following error/warning:
    `ActiveRecord::PendingMigrationError`
Just run the following command:
    `rails db:migrate RAILS_ENV=development`