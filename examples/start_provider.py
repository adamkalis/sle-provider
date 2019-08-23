from sleprovider.sleProvider import SleProvider

DATA_PORT = 55555
USER_PORT = 55529
MANAGER_PORT = 2048

provider = SleProvider()
provider.initialize_server('rest_manager', 'http_no_auth_rest_protocol', MANAGER_PORT)
provider.initialize_server('sle_provider', 'sle_protocol', USER_PORT)
provider.initialize_server('data_endpoint', 'json_data_protocol', DATA_PORT)
provider.start_reactor()