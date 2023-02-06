/* -*- C++ -*- */
// The following configuration file is designed to work for OpenBSD

#ifndef ACE_CONFIG_H
#define ACE_CONFIG_H
#include /**/ "ace/pre.h"

#if !defined (ACE_MT_SAFE)
#  define ACE_MT_SAFE 1
#endif

// Platform specific directives
#include <sys/param.h>

#include "ace/config-posix.h"

#include "ace/config-g++-common.h"

#define ACE_HAS_2_PARAM_ASCTIME_R_AND_CTIME_R
#define ACE_HAS_3_PARAM_WCSTOK
#define ACE_HAS_4_4BSD_SENDMSG_RECVMSG
#define ACE_HAS_ALLOCA
#define ACE_HAS_ALT_CUSERID
#define ACE_HAS_AUTOMATIC_INIT_FINI
#define ACE_HAS_CHARPTR_DL
#define ACE_HAS_CLOCK_GETTIME
#define ACE_HAS_CLOCK_SETTIME
#define ACE_HAS_CONSISTENT_SIGNAL_PROTOTYPES
#define ACE_HAS_DIRENT
#define ACE_HAS_GETIFADDRS
#define ACE_HAS_GETPAGESIZE
#define ACE_HAS_GETRUSAGE
#define ACE_HAS_GPERF
#define ACE_HAS_HANDLE_SET_OPTIMIZED_FOR_SELECT
#define ACE_HAS_ICMP_SUPPORT 1
#define ACE_HAS_IPV6
#define ACE_HAS_IP_MULTICAST
#define ACE_HAS_MEMCHR
#define ACE_HAS_MKDIR
#define ACE_HAS_MSG
#define ACE_HAS_NANOSLEEP
#define ACE_HAS_NEW_NO_H
#define ACE_HAS_NONCONST_SELECT_TIMEVAL
#define ACE_HAS_POLL
#define ACE_HAS_POSIX_NONBLOCK
#define ACE_HAS_POSIX_TIME
#define ACE_HAS_PTHREADS_UNIX98_EXT
#define ACE_HAS_PTHREAD_GETCONCURRENCY
#define ACE_HAS_PTHREAD_MUTEXATTR_SETKIND_NP
#define ACE_HAS_PTHREAD_NP_H
#define ACE_HAS_PTHREAD_SETCONCURRENCY
#define ACE_HAS_PTHREAD_SIGMASK_PROTOTYPE
#define ACE_HAS_P_READ_WRITE
#define ACE_HAS_RECURSIVE_THR_EXIT_SEMANTICS
#define ACE_HAS_REENTRANT_FUNCTIONS
#define ACE_HAS_RTLD_LAZY_V
#define ACE_HAS_SCANDIR
#define ACE_HAS_SEMUN
#define ACE_HAS_SIGACTION_CONSTP2
#define ACE_HAS_SIGINFO_T
#define ACE_HAS_SIGSUSPEND
#define ACE_HAS_SIGWAIT
#define ACE_HAS_SIG_ATOMIC_T
#define ACE_HAS_SIG_C_FUNC
#define ACE_HAS_SOCKADDR_IN6_SIN6_LEN
#define ACE_HAS_SOCKADDR_IN_SIN_LEN
#define ACE_HAS_SOCKADDR_MSG_NAME
#define ACE_HAS_SOCKLEN_T
#define ACE_HAS_SSIZE_T
#define ACE_HAS_STRINGS
#define ACE_HAS_STRING_CLASS
#define ACE_HAS_SVR4_DYNAMIC_LINKING
#define ACE_HAS_SVR4_SIGNAL_T
#define ACE_HAS_SYSCTL
#define ACE_HAS_SYSV_IPC
#define ACE_HAS_SYS_FILIO_H
#define ACE_HAS_STRSIGNAL
#define ACE_HAS_SYS_SOCKIO_H
#define ACE_HAS_SYS_SYSCALL_H
#define ACE_HAS_TERMIOS
#define ACE_HAS_THREAD_SPECIFIC_STORAGE
#define ACE_HAS_TIMEZONE_GETTIMEOFDAY
#define ACE_HAS_UALARM
#define ACE_HAS_VASPRINTF
#define ACE_HAS_VOIDPTR_MMAP
#define ACE_HAS_VOIDPTR_SOCKOPT
#define ACE_HAS_VOID_UNSETENV
#define ACE_HAS_WCHAR
#define ACE_HAS_XPG4_MULTIBYTE_CHAR
#define ACE_HAS_SYS_SIGINFO_H

#define ACE_LACKS_CONDATTR_PSHARED
#define ACE_LACKS_GETIPNODEBYADDR
#define ACE_LACKS_GETIPNODEBYNAME
#define ACE_LACKS_ISCTYPE
#define ACE_LACKS_MUTEXATTR_PSHARED
#define ACE_LACKS_NETDB_REENTRANT_FUNCTIONS
#define ACE_LACKS_SETSCHED
#define ACE_LACKS_STROPTS_H
#define ACE_LACKS_STRRECVFD
#define ACE_LACKS_TIMESPEC_T
#define ACE_LACKS_UCONTEXT_H

#define ACE_PAGE_SIZE 4096

// OpenBSD 3.6
#if (OpenBSD < 200411)
#  define ACE_USES_ASM_SYMBOL_IN_DLSYM
#endif

// ucontext_t is in OpenBSD 3.5 and later.
#if (OpenBSD >= 200405)
#  define ACE_HAS_UCONTEXT_T
#endif /* OpenBSD >= 200405 */

// Lacks perfect filtering, must bind group address.
#if !defined ACE_LACKS_PERFECT_MULTICAST_FILTERING
#  define ACE_LACKS_PERFECT_MULTICAST_FILTERING 1
#endif /* ACE_LACKS_PERFECT_MULTICAST_FILTERING */

// OpenBSD's dlsym call segfaults when passed an invalid handle.
// It seems as if most other OSs detect this and just report an error.
#define ACE_HAS_DLSYM_SEGFAULT_ON_INVALID_HANDLE

#define ACE_SSIZE_T_FORMAT_SPECIFIER_ASCII "%ld"
#define ACE_SIZE_T_FORMAT_SPECIFIER_ASCII "%lu"

#include /**/ "ace/post.h"

#endif /* ACE_CONFIG_H */
