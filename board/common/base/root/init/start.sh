# !/bin/sh

project_name=alientek_app
project_path=/root

auto_start_path=${project_path}/app/${project_name}
	
${project_path}/daemon/start $auto_start_path& >/dev/null 2>&1

