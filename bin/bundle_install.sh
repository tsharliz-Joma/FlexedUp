mkdir -p bin
echo "#!/bin/sh" > bin/bundle_install.sh
echo "gem install rubygems-update -v 3.3.22" >> bin/bundle_install.sh
echo "update_rubygems" >> bin/bundle_install.sh
echo "gem uninstall rubygems-update -v 3.3.22" >> bin/bundle_install.sh
echo "bundle install -j4" >> bin/bundle_install.sh
chmod +x bin/bundle_install.sh
