source ~/stackrc
pushd ~ >/dev/null
[ -d puppet-modeles ] && upload-puppet-modules -d puppet-modules
time openstack overcloud deploy --templates ~/templates \
-r ~/tht/custom-roles.yaml \
--plan-environment ~/tripleo-heat-templates/plan-samples/plan-environment-derived-params.yaml \
--control-flavor control \
--update-plan-only \
--stack overcloud \
-e /home/stack/templates/environments/storage-environment.yaml \
-e ~/tht/hci-dpdk-layout.yaml
popd >/dev/null
