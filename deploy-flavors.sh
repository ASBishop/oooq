source ~/stackrc
pushd ~ >/dev/null
[ -d puppet-modules ] && upload-puppet-modules -d puppet-modules
time openstack overcloud deploy --templates ~/templates \
-e ~/templates/environments/config-debug.yaml \
-e ~/templates/environments/storage-environment.yaml \
-e ~/tht/flavor-layout.yaml \
-e ~/tht/multi-rbd.yaml \
-e ~/tht/ceph.yaml
popd >/dev/null
