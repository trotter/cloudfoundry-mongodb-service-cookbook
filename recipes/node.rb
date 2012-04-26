include_recipe "mongodb::10gen_repo"

# For some local thing that mongodb does
package "sqlite3"
package "libsqlite3-ruby"
package "libsqlite3-dev"

cloudfoundry_component "mongodb_node" do
  install_path File.join(node.cloudfoundry_common.vcap.install_path, "services", "mongodb")
  bin_file     File.join(node.cloudfoundry_common.vcap.install_path, "bin", "services", "mongodb_node")
  pid_file     node.cloudfoundry_mongodb_service.node.pid_file
  log_file     node.cloudfoundry_mongodb_service.node.log_file
end

directory node.cloudfoundry_mongodb_service.node.base_dir do
  owner node.cloudfoundry_common.user
  mode  "0755"
end

directory node.cloudfoundry_mongodb_service.node.db_logs_dir do
  owner node.cloudfoundry_common.user
  mode  "0755"
end

directory node.cloudfoundry_mongodb_service.node.instances_dir do
  owner node.cloudfoundry_common.user
  mode  "0755"
end
