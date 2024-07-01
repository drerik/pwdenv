#Sources a file based on the current directory

PWDENV_CONFIG_DIR=${HOME}/.config/pwdenv
PWDENV_HOME=${PWDENV_CONFIG_DIR}/config

function pwdenv()
{
	PWDENV_CONFIG_FILE=${PWDENV_HOME}${PWD}/${1:-default}
	if [[ ! -f "${PWDENV_CONFIG_FILE}" ]]
	then
		mkdir -p ${PWDENV_HOME}${PWD}
		${EDITOR:-nano} ${PWDENV_CONFIG_FILE}
	else
		source ${PWDENV_CONFIG_FILE}
	fi
}

function pwdenv-edit()
{
	PWDENV_CONFIG_FILE=${PWDENV_HOME}/${PWD}/${1:-default}
	${EDITOR:-nano} ${PWDENV_CONFIG_FILE}
}


function pwdenv-show()
{
	echo "The Current dir has the following environment files:"
	ls -lah ${PWDENV_HOME}${PWD}/
}
