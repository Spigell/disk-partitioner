
force=$(config table.force)
device=$(config table.target)
type=$(config table.type)

if [[ $force == 'true' ]]; then
  parted_opts+=' -s'
fi


parted $parted_opts $device mklabel $type
