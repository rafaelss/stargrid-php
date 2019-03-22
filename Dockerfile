FROM php:7.2

RUN apt-get update && apt-get install -y \
  git \
  libaspell-dev \
  libbz2-dev \
  libcurl4-gnutls-dev \
  libexpat1-dev \
  libfreetype6-dev \
  libgmp3-dev \
  libicu-dev \
  libjpeg-dev \
  libldap2-dev \
  libmcrypt-dev \
  libpcre3-dev \
  libpng-dev \
  libpq-dev \
  libsnmp-dev \
  libsqlite3-dev \
  libtidy-dev \
  libvpx-dev \
  libxml2-dev \
  libxpm-dev \
  libzip-dev \
  unixodbc-dev \
  unzip \
  zlib1g-dev \
  && rm -rf /var/lib/apt/lists/*
RUN docker-php-ext-install mbstring pdo_mysql curl json intl gd xml zip bz2 opcache
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
