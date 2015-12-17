module Capcon
  OPT_CAP_LIST = {
    "cap-chown" => Capability::CAP_CHOWN,
    "cap-dac-override" => Capability::CAP_DAC_OVERRIDE,
    "cap-dac-read-search" => Capability::CAP_DAC_READ_SEARCH,
    "cap-fowner" => Capability::CAP_FOWNER,
    "cap-fsetid" => Capability::CAP_FSETID,
    "cap-kill" => Capability::CAP_KILL,
    "cap-setgid" => Capability::CAP_SETGID,
    "cap-setuid" => Capability::CAP_SETUID,
    "cap-setpcap" => Capability::CAP_SETPCAP,
    "cap-linux-immutable" => Capability::CAP_LINUX_IMMUTABLE,
    "cap-net-bind-service" => Capability::CAP_NET_BIND_SERVICE,
    "cap-net-broadcast" => Capability::CAP_NET_BROADCAST,
    "cap-net-admin" => Capability::CAP_NET_ADMIN,
    "cap-net-raw" => Capability::CAP_NET_RAW,
    "cap-ipc-lock" => Capability::CAP_IPC_LOCK,
    "cap-ipc-owner" => Capability::CAP_IPC_OWNER,
    "cap-sys-module" => Capability::CAP_SYS_MODULE,
    "cap-sys-rawio" => Capability::CAP_SYS_RAWIO,
    "cap-sys-chroot" => Capability::CAP_SYS_CHROOT,
    "cap-sys-ptrace" => Capability::CAP_SYS_PTRACE,
    "cap-sys-pacct" => Capability::CAP_SYS_PACCT,
    "cap-sys-admin" => Capability::CAP_SYS_ADMIN,
    "cap-sys-boot" => Capability::CAP_SYS_BOOT,
    "cap-sys-nice" => Capability::CAP_SYS_NICE,
    "cap-sys-resource" => Capability::CAP_SYS_RESOURCE,
    "cap-sys-time" => Capability::CAP_SYS_TIME,
    "cap-sys-tty-config" => Capability::CAP_SYS_TTY_CONFIG,
    "cap-mknod" => Capability::CAP_MKNOD,
    "cap-lease" => Capability::CAP_LEASE,
    "cap-audit-write" => Capability::CAP_AUDIT_WRITE,
    "cap-audit-control" => Capability::CAP_AUDIT_CONTROL,
    #"cap-setfcap" => Capability::CAP_SETFCAP,
    #"cap-mac-override" => Capability::CAP_MAC_OVERRIDE,
    #"cap-mac-admin" => Capability::CAP_MAC_ADMIN,
    #"cap-syslog" => Capability::CAP_SYSLOG,
    #"cap-wake-alarm" => Capability::CAP_MAKE_ALARM,
    #"cap-block-suspend" => Capability::CAP_BLOCK_SUSPEND,
    #"cap-compromise-kernel" => Capability::CAP_COMPROMISE_KERNEL,
  }
  
  OPT_CMD_LIST = %w(
    user:
    command:
    version
    help
    dry-run
  )
end
