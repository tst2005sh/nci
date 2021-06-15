capture__capturecode() {
	echo 'CAPTURE() {'
	echo ' [ "$1" != "as" ] || shift;'
	echo ' echo "MODULE ${UNECIBLE_MODULE:-MISSING_MODULE_NAME} KEY $1";'
	echo ' if command -v base64 >/dev/null 2>&1; then'
	echo '  echo "b64:";'
	echo '  base64;'
	echo ' elif command -v od >/dev/null 2>&1; then'
	echo '  echo "b16:";'
	echo '  od -t x1 -An;'
	echo 'else'
	echo '  echo "failure:";'
#	echo '  echo "b8:";'
#	echo '  od -t o1 -An;'
	echo ' fi;'
	echo ' echo;'
	echo '}'
}