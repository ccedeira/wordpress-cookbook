name             'wordpress'
maintainer       'Christian Cedeira'
maintainer_email 'ccedeira@lojack.com.ar'
license          'Copyright 2014 Christian Cedeira

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.All rights reserved'
description      'Installs/Configures wordpress'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version IO.read(File.join(File.dirname(__FILE__), 'VERSION')) rescue  '0.1.0'

depends 'apache2'
depends 'mysql'
depends 'php'
depends 'database'
