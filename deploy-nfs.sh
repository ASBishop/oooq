source ~/stackrc
pushd ~ ; upload-puppet-modules -d puppet-modules ; popd
time openstack overcloud deploy --templates ~/templates \
--libvirt-type qemu \
-e ~/tht/basic-layout.yaml \
-e ~/templates/environments/cinder-netapp-config.yaml
