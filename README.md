# How to Use

From Ubuntu Terminal, you need to install ruby:
```
sudo apt-get install ruby-full
```
If your system is windows, you need to access [Ruby Page]( https://rubyinstaller.org/) to install ruby.

After, ruby was installed, it's need to install the dependencies, follow the commands below:
```
gem install bundler
gem install selenium-webdriver
gem install cucumber
gem install rspec
```

Install Mozila firefox in [Firefox page](https://www.mozilla.org/pt-BR/firefox/new/)
Install geckodriver, check the list to configure and install, follow:

1. Use comand is: cd /home/[your username]/bin
2. Download geckdriver use command is: wget https://github.com/mozilla/geckodriver/releases/download/v0.18.0/
3. Extract file: tar -zxvf geckodriver-v0.18.0-linux64.tar.gz
4. Set: export PATH=$PATH:/home/[your username]/bin
5. Check geckodriver is working, use  "whereis geckodriver" comand will showing like:
```
geckodriver: /home/user/bin/geckodriver
```

# How to run the cucumber features

First, you go in cucumber repository as "jeisonPereira-cucumber" and start to run, an example:
```
cucumber 
```
