getBitbucketURL() {
    name=$(basename $MR_REPO)
    if [ "$1" != "" ]; then
        name="$1"
    fi
    uri=https://bitbucket.org/nvdaaddonteam
    if [ -n "$MR_USE_PROTOCOL" ] && [ "$MR_USE_PROTOCOL" == "ssh" ]; then
        uri="$bt_ssh"
    fi
    echo ${uri}/${name}.git
}
