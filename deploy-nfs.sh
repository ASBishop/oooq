source ~/stackrc
pushd ~ >/dev/null
[ -d puppet-modules ] && upload-puppet-modules -d puppet-modules
time openstack overcloud deploy --templates ~/templates \
-e ~/tht/basic-layout.yaml \
-e ~/tht/cinder-backup.yaml \
-e ~/tht/cinder-nfs-config.yaml
popd >/dev/null
