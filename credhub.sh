export CREDHUB_SERVER=https://192.168.50.6:8844
export CREDHUB_CLIENT=credhub-admin

export CREDHUB_SECRET=$(bosh interpolate ./creds.yml --path=/credhub_admin_client_secret)

export CREDHUB_CA_CERT="$(bosh interpolate ./creds.yml --path=/credhub_tls/ca )"$'\n'"$(bosh interpolate ./creds.yml --path=/uaa_ssl/ca)"
