# LARABLOG

The PHP artisan bloging platform , simple for blogger.

![Image of Yaktocat](https://a.fsdn.com/con/app/proj/larablog/screenshots/Screenshot_2020-09-02%20Laravel%20Blogs%282%29.png/max/max/1)

![Laravel Blogs CMS](https://a.fsdn.com/con/app/proj/larablog/screenshots/Screenshot_2020-09-02%20Laravel%20Blogs.png/max/max/1)

![Laravel Blogs CMS](https://a.fsdn.com/con/app/proj/larablog/screenshots/Screenshot_2020-09-02%20Laravel%20Blogs%281%29.png/max/max/1)

![Laravel Blogs CMS](https://a.fsdn.com/con/app/proj/larablog/screenshots/Screenshot_2020-09-02%20Download%20Laravel%20Blogs.png/max/max/1)


### Download Laravel Blogs

You can download on sourceforge.
[Sourceforge Download](https://sourceforge.net/projects/larablog/files/latest/download)

Download laravel blogs and move to your project folder, for the first you need install third party application for run this modern blog platform.

Or download link : 
[Xampp server →](https://www.apachefriends.org/download.html) 
[Git → ](https://git-scm.com/downloads)
[Composer →](https://getcomposer.org/download/)

Download and run all third party application, for xampp you need configure to auto start apache and mysql
because we use mysql for databased and apache for web server on local host.

After download and install all application now you can run with git, just right click on laravel blog folder and select git bash here
and we need to install laravel then run command : composer global require "laravel/installer=~1.1"

Run Xampp web server , and open localhost/phpmyadmin on your web browser you can using google chrome or mozila or your favorite web browser
and create new mysql databased , just click database - database name (name it with laravelblog) - create.

After new databased create now you can click on import databased , and import laravelblog.sql file.

now back to laravel blog folder , right click an select git bash , 
run comand : composer install && npm install && php artisan key:generate && php artisan serve

Open web browser and visit localhost:8000

now you can use laravel blogs. lets get started write a content  !!

