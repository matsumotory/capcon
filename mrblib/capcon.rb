def exec_cmd user, cmd
  #ret = system "sudo -u #{user} #{cmd}"
  ret = system cmd
  ret
end

def __main__(argv)

  opts_ary = [""] + Capcon::OPT_CAP_LIST.keys + Capcon::OPT_CMD_LIST
  opts = Getopts.getopts(*opts_ary).each_with_object({}) {|ary,opts| opts[ary[0].to_sym] = ary[1] }

  raise ArgumentError, "\n\n#{Capcon::USAGE}\n" if opts.has_key?(:"?")

  if opts.has_key? :version
    puts "v#{Capcon::VERSION}"
    exit
  end

  if opts.has_key? :help
    puts Capcon::USAGE
    puts Capcon::OPT_CAP_LIST
    puts Capcon::OPT_CMD_LIST
    exit
  end

  if opts.has_key? :"dry-run"
    p opts
    exit
  end

  raise ArgumentError, "command not found: --command" if opts[:command].empty?
  raise ArgumentError, "user not found: --user" if opts[:user].empty?

  caps = []
  opts.keys.each do |k|
    p k
    caps << Capcon::OPT_CAP_LIST[k.to_s] unless Capcon::OPT_CAP_LIST[k.to_s].nil?
  end
  p caps

  c = Capability.new
  #c.set Capability::CAP_PERMITTED, caps
  c.setuid 501
  c.setgid 501
  c.set_flag Capability::CAP_PERMITTED, caps, Capability::CAP_SET
  c.set_flag Capability::CAP_EFFECTIVE, caps, Capability::CAP_SET
  c.set_flag Capability::CAP_INHERITABLE, caps, Capability::CAP_SET

  exec_cmd opts[:user], opts[:command]
end
