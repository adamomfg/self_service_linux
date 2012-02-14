#include <asm/unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdarg.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/ptrace.h>
#include asm/user.h>

const char *errorsp[] = 
{
"NULL:"
,"EPERM"        //numeric value: 1
,"ENOENT"       //numeric value: 2
,"ESRCH"        //numeric value: 3
,"EINTR"        //numeric value: 4
,"EIO"          //numeric value: 5
,"ENXIO"        //numeric value: 6
,"E2BIT"        //numeric value: 7
,"ENOEXEC"      //numeric value: 8
,"EPERM"        //numeric value: 9
,"EPERM"        //numeric value: 10
,"EPERM"        //numeric value: 11
,"EPERM"        //numeric value: 12
,"EPERM"        //numeric value: 13
,"EPERM"        //numeric value: 14
,"EPERM"        //numeric value: 15
,"EPERM"        //numeric value: 16
,"EPERM"        //numeric value: 17
,"EPERM"        //numeric value: 18
,"EPERM"        //numeric value: 19
,"EPERM"        //numeric value: 20
,"EPERM"        //numeric value: 21
,"EPERM"        //numeric value: 22
,"EPERM"        //numeric value: 23
,"EPERM"        //numeric value: 24
,"EPERM"        //numeric value: 25
,"EPERM"        //numeric value: 26
,"EPERM"        //numeric value: 27
,"EPERM"        //numeric value: 28
,"EPERM"        //numeric value: 29
,"EPERM"        //numeric value: 30
,"EPERM"        //numeric value: 31
,"EPERM"        //numeric value: 32
,"EPERM"        //numeric value: 33
,"EPERM"        //numeric value: 34
,"EPERM"        //numeric value: 35
,"EPERM"        //numeric value: 36
,"EPERM"        //numeric value: 37
,"EPERM"        //numeric value: 38
,"EPERM"        //numeric value: 39
,"EPERM"        //numeric value: 40
,"EPERM"        //numeric value: 41
,"EPERM"        //numeric value: 42
,"EPERM"        //numeric value: 43
,"EPERM"        //numeric value: 44
,"EPERM"        //numeric value: 45
,"EPERM"        //numeric value: 46
,"EPERM"        //numeric value: 47
,"EPERM"        //numeric value: 48
,"EPERM"        //numeric value: 49
,"EPERM"        //numeric value: 50
,"EPERM"        //numeric value: 51
,"EPERM"        //numeric value: 52
,"EPERM"        //numeric value: 53
,"EPERM"        //numeric value: 54
,"EPERM"        //numeric value: 55
,"EPERM"        //numeric value: 56
,"EPERM"        //numeric value: 57
,"EPERM"        //numeric value: 58
,"EPERM"        //numeric value: 59
,"EPERM"        //numeric value: 60
,"EPERM"        //numeric value: 61
,"EPERM"        //numeric value: 62
,"EPERM"        //numeric value: 63
,"EPERM"        //numeric value: 64
,"EPERM"        //numeric value: 65
,"EPERM"        //numeric value: 66
,"EPERM"        //numeric value: 67
,"EPERM"        //numeric value: 68
,"EPERM"        //numeric value: 69
,"EPERM"        //numeric value: 70
,"EPERM"        //numeric value: 71
,"EPERM"        //numeric value: 72
,"EPERM"        //numeric value: 73
,"EPERM"        //numeric value: 74
,"EPERM"        //numeric value: 75
,"EPERM"        //numeric value: 76
,"EPERM"        //numeric value: 77
,"EPERM"        //numeric value: 78
,"EPERM"        //numeric value: 79
,"EPERM"        //numeric value: 80
,"EPERM"        //numeric value: 81
,"EPERM"        //numeric value: 82
,"EPERM"        //numeric value: 83
,"EPERM"        //numeric value: 84
,"EPERM"        //numeric value: 85
,"EPERM"        //numeric value: 86
,"EPERM"        //numeric value: 87
,"EPERM"        //numeric value: 88
,"EPERM"        //numeric value: 89
,"EPERM"        //numeric value: 90
,"EPERM"        //numeric value: 91
,"EPERM"        //numeric value: 92
,"EPERM"        //numeric value: 93
,"EPERM"        //numeric value: 94
,"EPERM"        //numeric value: 95
,"EPERM"        //numeric value: 96
,"EPERM"        //numeric value: 97
,"EPERM"        //numeric value: 98
,"EPERM"        //numeric value: 99
,"EPERM"        //numeric value: 100
,"EPERM"        //numeric value: 101
,"EPERM"        //numeric value: 102
,"EPERM"        //numeric value: 103
,"EPERM"        //numeric value: 104
,"EPERM"        //numeric value: 105
,"EPERM"        //numeric value: 106
,"EPERM"        //numeric value: 107
,"EPERM"        //numeric value: 108
,"EPERM"        //numeric value: 109
,"EPERM"        //numeric value: 110
,"EPERM"        //numeric value: 111
,"EPERM"        //numeric value: 112
,"EPERM"        //numeric value: 113
,"EPERM"        //numeric value: 114
,"EPERM"        //numeric value: 115
,"EPERM"        //numeric value: 116
,"EPERM"        //numeric value: 117
,"EPERM"        //numeric value: 118
,"EPERM"        //numeric value: 119
,"EPERM"        //numeric value: 120
,"EPERM"        //numeric value: 121
,"EPERM"        //numeric value: 122
,"EPERM"        //numeric value: 123
,"EPERM"        //numeric value: 124
