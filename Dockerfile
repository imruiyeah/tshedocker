FROM ruby:2.2.3

RUN apt-get update -qq && apt-get install -y apt-utils build-essential libssl-dev libpq-dev libxml2-dev libxslt1-dev git imagemagick libbz2-dev libjpeg-dev libevent-dev libmagickcore-dev libffi-dev libglib2.0-dev zlib1g-dev libyaml-dev --fix-missing --no-install-recommends && apt-get clean

# for capybara-webkit & selenium
RUN apt-get install -y qt5-default libqt5webkit5-dev gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x xvfb x11-xkb-utils xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic iceweasel --fix-missing --no-install-recommends && apt-get clean

RUN curl -sL https://deb.nodesource.com/setup_5.x | bash -
# for a JS runtime
RUN apt-get install -y nodejs

RUN npm install -g webpack bower

RUN gem install bundler && gem update --system
