cloudfoundry_component "mongodb_gateway" do
  install_path File.join(node.cloudfoundry_common.vcap.install_path, "services", "mongodb")
  bin_file     File.join(node.cloudfoundry_common.vcap.install_path, "bin", "services", "mongodb_gateway")
  pid_file     node.cloudfoundry_mongodb_service.gateway.pid_file
  log_file     node.cloudfoundry_mongodb_service.gateway.log_file
end
