josephldaigle\wp-theme
==============
[![Build Status](https://travis-ci.org/josephldaigle/wp-theme.svg?branch=master)](https://travis-ci.org/josephldaigle/wp-theme)

A base WordPress install ready deployment to AWS Elastic Beanstalk with RDS Database.
This project is intended to ease development/maintenance for WP developers.

This project has been tested using a basic AWS Elastic Beanstalk setup (single instance) 

####Features:
1. Manage WordPress core, theme and plugin updates with Composer and Git.
2. Automatically deploys site content into it's own directory, separate from WordPress core files.
3. Avoid version headaches when updating plugins or WordPress core.


####Who this project is for:
Everyone. Yes, you heard me. While I think developers who manage multiple client's WordPress sites, and are looking to ease the process of updating plugins and core installs, anyone and everyone is free to use this code. Just please give attributions where possible.


####Pre-req's:
This project is designed to be deployed to an AWS Elastic Beanstalk instance that has access to an RDS Database with 

####How to use:
1. Clone the project.
2. Edit the wp-config file in the projects root.