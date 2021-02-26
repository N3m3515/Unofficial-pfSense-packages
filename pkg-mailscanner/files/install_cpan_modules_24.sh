#!/bin/sh

# *
# * install_cpan_24.sh
# *
# * part of unofficial packages for pfSense(R) software
# * Copyright (c) 2019 Marcello Coutinho
# * All rights reserved.
# *
# * Licensed under the Apache License, Version 2.0 (the "License");
# * you may not use this file except in compliance with the License.
# * You may obtain a copy of the License at
# *
# * http://www.apache.org/licenses/LICENSE-2.0
# *
# * Unless required by applicable law or agreed to in writing, software
# * distributed under the License is distributed on an "AS IS" BASIS,
# * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# * See the License for the specific language governing permissions and
# * limitations under the License.

ASSUME_ALWAYS_YES=YES
export ASSUME_ALWAYS_YES

if [ "$(cat /etc/version | cut -c 1-3)" == "2.4" ]; then
prefix=https://raw.githubusercontent.com/marcelloc/Unofficial-pfSense-packages/master/pkg-mailscanner/files

if [ ! -f /usr/bin/cc ] ;then
 fetch $prefix/mk.244.tar.gz &&
 tar -xvzf mk.244.tar.gz -C /
fi

export PERL_MM_USE_DEFAULT=1

cpan -i CPAN
cpan -i Filesys::Df
cpan -i DBI
cpan -i DBD::SQLite
cpan -i Archive::Zip
cpan -i NetAddr::IP
cpan -i Digest::SHA1
cpan -i Mail::SPF
cpan -i Geo::IP
cpan -i Razor2::Client::Agent
cpan -i Geo::IP
cpan -i IO::Socket::INET6
cpan -i Mail::DKIM
cpan -i BSD::Resource
cpan -i HTTP::Date
cpan -i Encode::Detect::Detector
cpan -i LWP::UserAgent
#cpan -i Net::Patricia
#cpan -i Mail::SpamAssassin

fi
