source ~/stackrc
pushd ~ >/dev/null
[ -d puppet-modules ] && upload-puppet-modules -d puppet-modules
time openstack overcloud deploy --templates ~/templates \
-e ~/templates/environments/config-debug.yaml \
-e ~/tht/basic-layout.yaml
popd >/dev/null
