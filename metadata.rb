name             'wordpress'
maintainer       'Christian Cedeira'
maintainer_email 'ccedeira@lojack.com.ar'
license          'Apache 2.0'
description      'Installs/Configures wordpress'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version IO.read(File.join(File.dirname(__FILE__), 'VERSION')) rescue  '0.1.0'

depends 'apache2'
depends 'mysql'
depends 'php'
depends 'database'
