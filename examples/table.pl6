set_spl (dev-partition => 'https://github.com/Spigell/partition.git');

task_run 'create table', 'dev-partition', %(
  table => %(
    type => 'msdos',
    target => '/dev/sdb'
  ),
);
