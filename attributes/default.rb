include_attribute "cloudfoundry-common"

# Where to write the mongodb service gateway's pid.
default[:cloudfoundry_mongodb_service][:gateway][:pid_file] = File.join(node.cloudfoundry_common.pid_dir, "mongodb_gateway.pid")

# Where to write the mongodb service gateway's logs.
default[:cloudfoundry_mongodb_service][:gateway][:log_file] = File.join(node.cloudfoundry_common.log_dir, "mongodb_gateway.log")

# Log level for the msyql service gateway.
default[:cloudfoundry_mongodb_service][:gateway][:log_level] = "debug"

# TODO (trotter): Find out what this does.
default[:cloudfoundry_mongodb_service][:gateway][:node_timeout] = 30

# Where to write the mongodb service node's pid.
default[:cloudfoundry_mongodb_service][:node][:pid_file] = File.join(node.cloudfoundry_common.pid_dir, "mongodb_node.pid")

# Where to write the mongodb service node's logs.
default[:cloudfoundry_mongodb_service][:node][:log_file] = File.join(node.cloudfoundry_common.log_dir, "mongodb_node.log")

# Where to write the mongodb service node's logs.
default[:cloudfoundry_mongodb_service][:node][:db_logs_dir] = File.join(node.cloudfoundry_common.log_dir, "mongodb")

# TODO (trotter): Find out what this does.
default[:cloudfoundry_mongodb_service][:node][:base_dir] = File.join(node.cloudfoundry_common.services_dir, "mongodb")

# Log level for the msyql service node.
default[:cloudfoundry_mongodb_service][:node][:log_level] = "info"

# TODO (trotter): Find out what this does.
default[:cloudfoundry_mongodb_service][:node][:index] = 0

# TODO (trotter): Find out what this does.
default[:cloudfoundry_mongodb_service][:node][:capacity] = 200

# TODO (trotter): Find out what this does.
default[:cloudfoundry_mongodb_service][:node][:instances_dir] = "#{node.cloudfoundry_mongodb_service.node.base_dir}/instances"

# TODO (trotter): Find out what this does.
default[:cloudfoundry_mongodb_service][:node][:max_memory] = 128

default[:cloudfoundry_mongodb_service][:node][:port_range][:first] = 25001
default[:cloudfoundry_mongodb_service][:node][:port_range][:last] = 45000

# TODO (trotter): Find out what this does.
default[:cloudfoundry_mongodb_service][:node][:migration_nfs] = "/mnt/migration"
