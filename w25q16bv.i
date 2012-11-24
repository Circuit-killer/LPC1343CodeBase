# 1 "drivers/storage/spiflash/w25q16bv/w25q16bv.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "drivers/storage/spiflash/w25q16bv/w25q16bv.c"
# 41 "drivers/storage/spiflash/w25q16bv/w25q16bv.c"
# 1 "drivers/storage/spiflash/w25q16bv/w25q16bv.h" 1
# 40 "drivers/storage/spiflash/w25q16bv/w25q16bv.h"
# 1 "./projectconfig.h" 1
# 40 "./projectconfig.h"
# 1 "./lpc134x.h" 1
# 46 "./lpc134x.h"
# 1 "./sysdefs.h" 1
# 42 "./sysdefs.h"
# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdio.h" 1 3
# 29 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdio.h" 3
# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/_ansi.h" 1 3
# 15 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/_ansi.h" 3
# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/newlib.h" 1 3
# 16 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/_ansi.h" 2 3
# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/config.h" 1 3



# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/config.h" 2 3
# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/features.h" 1 3
# 6 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/config.h" 2 3
# 17 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/_ansi.h" 2 3
# 30 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdio.h" 2 3




# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/include/stddef.h" 1 3 4
# 212 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/include/stddef.h" 3 4
typedef unsigned int size_t;
# 35 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdio.h" 2 3


# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/include/stdarg.h" 1 3 4
# 40 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 38 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdio.h" 2 3







# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/reent.h" 3
# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/_ansi.h" 1 3
# 14 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/_types.h" 1 3
# 12 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/_types.h" 3
# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/machine/_types.h" 1 3






# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/machine/_default_types.h" 1 3
# 26 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;
# 36 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/machine/_default_types.h" 3
typedef signed short __int16_t;
typedef unsigned short __uint16_t;
# 46 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/machine/_default_types.h" 3
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
# 58 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/machine/_default_types.h" 3
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
# 76 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/machine/_default_types.h" 3
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
# 99 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/machine/_default_types.h" 3
typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;
# 8 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/machine/_types.h" 2 3
# 13 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/_types.h" 2 3
# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/lock.h" 1 3





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 14 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/_types.h" 2 3


typedef long _off_t;







typedef short __dev_t;




typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 56 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/_types.h" 3
typedef int _ssize_t;






# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/include/stddef.h" 1 3 4
# 353 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 64 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 15 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 37 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/reent.h" 3
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};


struct _atexit {
 struct _atexit *_next;
 int _ind;
 void (*_fns[32])(void);
        struct _on_exit_args * _on_exit_args_ptr;
};
# 105 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 141 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/reent.h" 3
struct __sFILE_fake {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;

  struct _reent *_data;
};




extern void __sinit (struct _reent *);
# 179 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;


  struct _reent *_data;



  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                     ;
  int (* _write) (struct _reent *, void *, const char *, int)
                            ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  int _offset;






  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 286 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 318 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;


  __extension__ unsigned long long _rand_next;

};
# 351 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/reent.h" 3
struct _mprec
{

  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;
};


struct _misc_reent
{

  char *_strtok_last;
  _mbstate_t _mblen_state;
  _mbstate_t _wctomb_state;
  _mbstate_t _mbtowc_state;
  char _l64a_buf[8];
  int _getdate_err;
  _mbstate_t _mbrlen_state;
  _mbstate_t _mbrtowc_state;
  _mbstate_t _mbsrtowcs_state;
  _mbstate_t _wcrtomb_state;
  _mbstate_t _wcsrtombs_state;
};



struct _reent
{


  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;

  char *_emergency;

  int __sdidinit;

  int _current_category;
  const char *_current_locale;

  struct _mprec *_mp;

  void (* __cleanup) (struct _reent *);

  int _gamma_signgam;


  int _cvtlen;
  char *_cvtbuf;

  struct _rand48 *_r48;
  struct __tm *_localtime_buf;
  char *_asctime_buf;


  void (**(_sig_func))(int);


  struct _atexit *_atexit;
  struct _atexit _atexit0;

  struct _glue __sglue;
  __FILE *__sf;
  struct _misc_reent *_misc;
  char *_signal_buf;
};

extern const struct __sFILE_fake __sf_fake_stdin;
extern const struct __sFILE_fake __sf_fake_stdout;
extern const struct __sFILE_fake __sf_fake_stderr;
# 840 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 46 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdio.h" 2 3
# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/types.h" 1 3
# 69 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/types.h" 3
# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/include/stddef.h" 1 3 4
# 150 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 324 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 70 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/types.h" 2 3
# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/machine/types.h" 1 3
# 19 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/machine/types.h" 3
typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;
# 71 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/types.h" 2 3
# 92 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/types.h" 3
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;



typedef unsigned short ushort;
typedef unsigned int uint;



typedef unsigned long clock_t;




typedef long time_t;




struct timespec {
  time_t tv_sec;
  long tv_nsec;
};

struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};


typedef long daddr_t;
typedef char * caddr_t;






typedef unsigned short ino_t;
# 162 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/types.h" 3
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;





typedef int pid_t;



typedef long key_t;

typedef _ssize_t ssize_t;
# 191 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/types.h" 3
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 218 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/types.h" 3
typedef long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 249 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/types.h" 3
typedef unsigned long clockid_t;




typedef unsigned long timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;
# 47 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdio.h" 2 3



typedef __FILE FILE;




typedef _fpos_t fpos_t;





# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/sys/stdio.h" 1 3
# 62 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdio.h" 2 3
# 208 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdio.h" 3
FILE * tmpfile (void);
char * tmpnam (char *);
int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *, const char *, FILE *);
void setbuf (FILE *, char *);
int setvbuf (FILE *, char *, int, size_t);
int fprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int printf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int scanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int sscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int vfprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int vsprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int fgetc (FILE *);
char * fgets (char *, int, FILE *);
int fputc (int, FILE *);
int fputs (const char *, FILE *);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *, size_t _size, size_t _n, FILE *);
size_t fwrite (const void * , size_t _size, size_t _n, FILE *);





int fgetpos (FILE *, fpos_t *);
int fsetpos (FILE *, const fpos_t *);


int fseek (FILE *, long, int);
long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *_name, const char *_type);
int sprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int remove (const char *);
int rename (const char *, const char *);







int fseeko (FILE *, off_t, int);
off_t ftello ( FILE *);





int asiprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
char * asniprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * asnprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int asprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int diprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int fcloseall (void);
int fiprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fiscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int iprintf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int iscanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int siprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int siscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int snprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int sniprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * tempnam (const char *, const char *);
int vasiprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vasprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vdiprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vfscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int viprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int viscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsiprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vsiscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vsniprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsnprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
# 351 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdio.h" 3
FILE * fdopen (int, const char *);

int fileno (FILE *);
int getw (FILE *);
int pclose (FILE *);
FILE * popen (const char *, const char *);
int putw (int, FILE *);
void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);
int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 376 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdio.h" 3
int dprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

FILE * fmemopen (void *, size_t, const char *);


FILE * open_memstream (char **, size_t *);



int vdprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;







int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
char * _asnprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _asprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _dprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *, int, FILE *);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
FILE * _fmemopen_r (struct _reent *, void *, size_t, const char *);
FILE * _fopen_r (struct _reent *, const char *, const char *);
FILE * _freopen_r (struct _reent *, const char *, const char *, FILE *);
int _fprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *, FILE *);
size_t _fread_r (struct _reent *, void *, size_t _size, size_t _n, FILE *);
int _fscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * , size_t _size, size_t _n, FILE *);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new)
                                          ;
int _scanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _snprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _sprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _sscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vfprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _vscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsnprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);
# 553 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 573 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdio.h" 3
FILE *funopen (const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))



                                   ;
FILE *_funopen_r (struct _reent *, const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))



                                   ;







typedef ssize_t cookie_read_function_t(void *__cookie, char *__buf, size_t __n);
typedef ssize_t cookie_write_function_t(void *__cookie, const char *__buf,
     size_t __n);




typedef int cookie_seek_function_t(void *__cookie, off_t *__off, int __whence);

typedef int cookie_close_function_t(void *__cookie);
typedef struct
{


  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
FILE *fopencookie (void *__cookie, const char *__mode, cookie_io_functions_t __functions)
                                                         ;
FILE *_fopencookie_r (struct _reent *, void *__cookie, const char *__mode, cookie_io_functions_t __functions)
                                                         ;
# 721 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdio.h" 3

# 43 "./sysdefs.h" 2
# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/include/stdint.h" 1 3 4


# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdint.h" 1 3 4
# 41 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdint.h" 3 4
typedef signed char int8_t ;
typedef unsigned char uint8_t ;




typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;




typedef signed short int16_t;
typedef unsigned short uint16_t;
# 67 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdint.h" 3 4
typedef int16_t int_least16_t;
typedef uint16_t uint_least16_t;
# 79 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdint.h" 3 4
typedef signed long int32_t;
typedef unsigned long uint32_t;
# 97 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdint.h" 3 4
typedef int32_t int_least32_t;
typedef uint32_t uint_least32_t;
# 119 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdint.h" 3 4
typedef signed long long int64_t;
typedef unsigned long long uint64_t;
# 129 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdint.h" 3 4
typedef int64_t int_least64_t;
typedef uint64_t uint_least64_t;
# 159 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdint.h" 3 4
  typedef signed int int_fast8_t;
  typedef unsigned int uint_fast8_t;




  typedef signed int int_fast16_t;
  typedef unsigned int uint_fast16_t;




  typedef signed int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 213 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdint.h" 3 4
  typedef int_least64_t int_fast64_t;
  typedef uint_least64_t uint_fast64_t;







  typedef long long int intmax_t;
# 231 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdint.h" 3 4
  typedef long long unsigned int uintmax_t;
# 243 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/../../../../arm-none-eabi/include/stdint.h" 3 4
typedef signed int intptr_t;
typedef unsigned int uintptr_t;
# 4 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/include/stdint.h" 2 3 4
# 44 "./sysdefs.h" 2
# 1 "/Users/mm/arm-cs-tools/lib/gcc/arm-none-eabi/4.6.3/include/stdbool.h" 1 3 4
# 45 "./sysdefs.h" 2
# 74 "./sysdefs.h"
typedef volatile uint8_t REG8;
typedef volatile uint16_t REG16;
typedef volatile uint32_t REG32;
typedef unsigned char byte_t;
# 47 "./lpc134x.h" 2
# 1 "./projectconfig.h" 1
# 48 "./lpc134x.h" 2
# 1919 "./lpc134x.h"
typedef struct
{
  volatile uint32_t ISER[8];
  uint32_t RESERVED0[24];
  volatile uint32_t ICER[8];
   uint32_t RSERVED1[24];
  volatile uint32_t ISPR[8];
  uint32_t RESERVED2[24];
  volatile uint32_t ICPR[8];
  uint32_t RESERVED3[24];
  volatile uint32_t IABR[8];
  uint32_t RESERVED4[56];
  volatile uint8_t IP[240];
 uint32_t RESERVED5[644];
  volatile uint32_t STIR;
} NVIC_Type;



static inline void __enable_irq() { __asm volatile ("cpsie i"); }
static inline void __disable_irq() { __asm volatile ("cpsid i"); }

typedef enum IRQn
{

  NonMaskableInt_IRQn = -14,
  MemoryManagement_IRQn = -12,
  BusFault_IRQn = -11,
  UsageFault_IRQn = -10,
  SVCall_IRQn = -5,
  DebugMonitor_IRQn = -4,
  PendSV_IRQn = -2,
  SysTick_IRQn = -1,


  WAKEUP0_IRQn = 0,
  WAKEUP1_IRQn = 1,
  WAKEUP2_IRQn = 2,
  WAKEUP3_IRQn = 3,
  WAKEUP4_IRQn = 4,
  WAKEUP5_IRQn = 5,
  WAKEUP6_IRQn = 6,
  WAKEUP7_IRQn = 7,
  WAKEUP8_IRQn = 8,
  WAKEUP9_IRQn = 9,
  WAKEUP10_IRQn = 10,
  WAKEUP11_IRQn = 11,
  WAKEUP12_IRQn = 12,
  WAKEUP13_IRQn = 13,
  WAKEUP14_IRQn = 14,
  WAKEUP15_IRQn = 15,
  WAKEUP16_IRQn = 16,
  WAKEUP17_IRQn = 17,
  WAKEUP18_IRQn = 18,
  WAKEUP19_IRQn = 19,
  WAKEUP20_IRQn = 20,
  WAKEUP21_IRQn = 21,
  WAKEUP22_IRQn = 22,
  WAKEUP23_IRQn = 23,
  WAKEUP24_IRQn = 24,
  WAKEUP25_IRQn = 25,
  WAKEUP26_IRQn = 26,
  WAKEUP27_IRQn = 27,
  WAKEUP28_IRQn = 28,
  WAKEUP29_IRQn = 29,
  WAKEUP30_IRQn = 30,
  WAKEUP31_IRQn = 31,
  WAKEUP32_IRQn = 32,
  WAKEUP33_IRQn = 33,
  WAKEUP34_IRQn = 34,
  WAKEUP35_IRQn = 35,
  WAKEUP36_IRQn = 36,
  WAKEUP37_IRQn = 37,
  WAKEUP38_IRQn = 38,
  WAKEUP39_IRQn = 39,
  I2C_IRQn = 40,
  TIMER_16_0_IRQn = 41,
  TIMER_16_1_IRQn = 42,
  TIMER_32_0_IRQn = 43,
  TIMER_32_1_IRQn = 44,
  SSP_IRQn = 45,
  UART_IRQn = 46,
  USB_IRQn = 47,
  USB_FIQn = 48,
  ADC_IRQn = 49,
  WDT_IRQn = 50,
  BOD_IRQn = 51,
  EINT3_IRQn = 53,
  EINT2_IRQn = 54,
  EINT1_IRQn = 55,
  EINT0_IRQn = 56,
} IRQn_t;

static inline void NVIC_EnableIRQ(IRQn_t IRQn)
{
  ((NVIC_Type *) (0xE000E100))->ISER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));
}

static inline void NVIC_DisableIRQ(IRQn_t IRQn)
{
  ((NVIC_Type *) (0xE000E100))->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));
}

static inline void NVIC_SetIRQPriority(IRQn_t IRQn, uint8_t priority)
{
  ((NVIC_Type *) (0xE000E100))->IP[(uint32_t)(IRQn)] = ((priority << 5) & 0xff);
}
# 3522 "./lpc134x.h"
static inline uint32_t RBIT(uint32_t value) { uint32_t result=0; __asm volatile ("rbit %0, %1" : "=r" (result) : "r" (value) ); return(result); }
# 3538 "./lpc134x.h"
static inline void __resetBootloader() { __disable_irq(); (*((REG32 *) (0xE000ED0C))) = ((unsigned int) 0x05FA0000) | ((unsigned int) 0x00000004); while(1); }
# 41 "./projectconfig.h" 2
# 41 "drivers/storage/spiflash/w25q16bv/w25q16bv.h" 2
# 60 "drivers/storage/spiflash/w25q16bv/w25q16bv.h"
typedef enum
{

  W25Q16BV_CMD_WRITEENABLE = 0x06,
  W25Q16BV_CMD_WRITEDISABLE = 0x04,
  W25Q16BV_CMD_READSTAT1 = 0x05,
  W25Q16BV_CMD_READSTAT2 = 0x35,
  W25Q16BV_CMD_WRITESTAT = 0x01,
  W25Q16BV_CMD_PAGEPROG = 0x02,
  W25Q16BV_CMD_QUADPAGEPROG = 0x32,
  W25Q16BV_CMD_SECTERASE4 = 0x20,
  W25Q16BV_CMD_BLOCKERASE32 = 0x52,
  W25Q16BV_CMD_BLOCKERASE64 = 0xD8,
  W25Q16BV_CMD_CHIPERASE = 0x60,
  W25Q16BV_CMD_ERASESUSPEND = 0x75,
  W25Q16BV_CMD_ERASERESUME = 0x7A,
  W25Q16BV_CMD_POWERDOWN = 0xB9,
  W25Q16BV_CMD_CRMR = 0xFF,

  W25Q16BV_CMD_READDATA = 0x03,
  W25Q16BV_CMD_FREAD = 0x0B,
  W25Q16BV_CMD_FREADDUALOUT = 0x3B,
  W25Q16BV_CMD_FREADDUALIO = 0xBB,
  W25Q16BV_CMD_FREADQUADOUT = 0x6B,
  W25Q16BV_CMD_FREADQUADIO = 0xEB,
  W25Q16BV_CMD_WREADQUADIO = 0xE7,
  W25Q16BV_CMD_OWREADQUADIO = 0xE3,

  W25Q16BV_CMD_RPWRDDEVID = 0xAB,
  W25Q16BV_CMD_MANUFDEVID = 0x90,
  W25Q16BV_CMD_MANUFDEVID2 = 0x92,
  W25Q16BV_CMD_MANUFDEVID4 = 0x94,
  W25Q16BV_CMD_JEDECID = 0x9F,
  W25Q16BV_CMD_READUNIQUEID = 0x4B
} w25q16bv_Commands_e;
# 42 "drivers/storage/spiflash/w25q16bv/w25q16bv.c" 2
# 1 "drivers/storage/spiflash/w25q16bv/../spiflash.h" 1
# 47 "drivers/storage/spiflash/w25q16bv/../spiflash.h"
typedef enum
{
  SPIFLASH_ERROR_OK = 0,
  SPIFLASH_ERROR_ADDROUTOFRANGE = 1,
  SPIFLASH_ERROR_TIMEOUT_READY = 2,
  SPIFLASH_ERROR_WRITEERR = 3,
  SPIFLASH_ERROR_PROTECTIONERR = 4,
  SPIFLASH_ERROR_ADDROVERFLOW = 5,
  SPIFLASH_ERROR_UNEXPECTEDID = 6,
  SPIFLASH_ERROR_NOTSTARTOFPAGE = 7,
  SPIFLASH_ERROR_DATAEXCEEDSPAGESIZE = 9,
  SPIFLASH_ERROR_PAGEWRITEOVERFLOW = 10,
  SPIFLASH_ERROR_LAST
}
spiflashError_e;







typedef struct
{
  uint32_t pageSize;
  uint32_t pageCount;
  uint32_t sectorSize;
  uint32_t sectorCount;
}
spiflashSizeInfo_t;







void spiflashInit (void);
# 93 "drivers/storage/spiflash/w25q16bv/../spiflash.h"
spiflashSizeInfo_t spiflashGetSizeInfo(void);
# 105 "drivers/storage/spiflash/w25q16bv/../spiflash.h"
void spiflashGetManufacturerInfo (uint8_t *manufID, uint8_t *deviceID);
# 116 "drivers/storage/spiflash/w25q16bv/../spiflash.h"
void spiflashWriteEnable (_Bool enable);
# 159 "drivers/storage/spiflash/w25q16bv/../spiflash.h"
spiflashError_e spiflashReadBuffer (uint32_t address, uint8_t *buffer, uint32_t len);
# 192 "drivers/storage/spiflash/w25q16bv/../spiflash.h"
spiflashError_e spiflashEraseSector (uint32_t sectorNumber);
# 219 "drivers/storage/spiflash/w25q16bv/../spiflash.h"
spiflashError_e spiflashEraseChip (void);
# 278 "drivers/storage/spiflash/w25q16bv/../spiflash.h"
spiflashError_e spiflashWritePage (uint32_t address, uint8_t *buffer, uint32_t len);
# 337 "drivers/storage/spiflash/w25q16bv/../spiflash.h"
spiflashError_e spiflashWrite (uint32_t address, uint8_t *buffer, uint32_t len);
# 43 "drivers/storage/spiflash/w25q16bv/w25q16bv.c" 2
# 1 "./core/ssp/ssp.h" 1
# 43 "./core/ssp/ssp.h"
# 1 "./core/gpio/gpio.h" 1
# 50 "./core/gpio/gpio.h"
typedef enum gpioInterruptSense_e
{
  gpioInterruptSense_Edge = 0,
  gpioInterruptSense_Level
}
gpioInterruptSense_t;







typedef enum gpioInterruptEdge_e
{
  gpioInterruptEdge_Single = 0,
  gpioInterruptEdge_Double
}
gpioInterruptEdge_t;
# 77 "./core/gpio/gpio.h"
typedef enum gpioInterruptEvent_e
{
  gpioInterruptEvent_ActiveHigh = 0,
  gpioInterruptEvent_ActiveLow
}
gpioInterruptEvent_t;

typedef enum gpioDirection_e
{
  gpioDirection_Input = 0,
  gpioDirection_Output
}
gpioDirection_t;

typedef enum gpioPullupMode_e
{
  gpioPullupMode_Inactive = ((unsigned int) 0x00000000),
  gpioPullupMode_PullDown = ((unsigned int) 0x00000008),
  gpioPullupMode_PullUp = ((unsigned int) 0x00000010),
  gpioPullupMode_Repeater = ((unsigned int) 0x00000018)
}
gpioPullupMode_t;

void gpioInit ( void );
void gpioSetDir ( uint32_t portNum, uint32_t bitPos, gpioDirection_t dir );
void gpioSetInterrupt ( uint32_t portNum, uint32_t bitPos, gpioInterruptSense_t sense, gpioInterruptEdge_t edge, gpioInterruptEvent_t event );
void gpioIntEnable ( uint32_t portNum, uint32_t bitPos );
void gpioIntDisable ( uint32_t portNum, uint32_t bitPos );
uint32_t gpioIntStatus ( uint32_t portNum, uint32_t bitPos );
void gpioIntClear ( uint32_t portNum, uint32_t bitPos );
void gpioSetPullup ( volatile uint32_t *ioconRegister, gpioPullupMode_t mode );


extern inline uint32_t gpioGetValue ( const uint32_t portNum, const uint32_t bitPos ) __attribute__((always_inline));
extern inline void gpioSetValue ( const uint32_t portNum, const uint32_t bitPos, const uint32_t bitVal) __attribute__((always_inline));
# 125 "./core/gpio/gpio.h"
extern inline uint32_t gpioGetValue (uint32_t portNum, uint32_t bitPos)
{

  return (*((REG32 *) (((0x50000000) + (portNum << 16)) + ((1 << bitPos) << 2)))) & (1 << bitPos) ? 1 : 0;
}
# 145 "./core/gpio/gpio.h"
extern inline void gpioSetValue (uint32_t portNum, uint32_t bitPos, uint32_t bitVal)
{

  (*((REG32 *) (((0x50000000) + (portNum << 16)) + ((1 << bitPos) << 2)))) = bitVal ? 0xFFF : 0;
}
# 44 "./core/ssp/ssp.h" 2
# 60 "./core/ssp/ssp.h"
typedef enum sspClockPolarity_e
{
  sspClockPolarity_Low = 0,
  sspClockPolarity_High
}
sspClockPolarity_t;







typedef enum sspClockPhase_e
{
  sspClockPhase_RisingEdge = 0,
  sspClockPhase_FallingEdge
}
sspClockPhase_t;

extern void SSP_IRQHandler (void);
void sspInit (uint8_t portNum, sspClockPolarity_t polarity, sspClockPhase_t phase);
void sspSend (uint8_t portNum, uint8_t *buf, uint32_t length);
void sspReceive (uint8_t portNum, uint8_t *buf, uint32_t length);
# 44 "drivers/storage/spiflash/w25q16bv/w25q16bv.c" 2

# 1 "./core/systick/systick.h" 1
# 44 "./core/systick/systick.h"
void systickInit (uint32_t delayMs);
void systickDelay (uint32_t delayTicks);
uint32_t systickGetTicks(void);
uint32_t systickGetRollovers(void);
uint32_t systickGetSecondsActive(void);
# 46 "drivers/storage/spiflash/w25q16bv/w25q16bv.c" 2






static _Bool _w25q16bvInitialised = 0;
# 69 "drivers/storage/spiflash/w25q16bv/w25q16bv.c"
uint8_t w25q16bv_TransferByte(uint8_t data)
{

    while (((*((REG32 *) (0x4004000C))) & (((unsigned int) 0x00000002) | ((unsigned int) 0x00000010))) != ((unsigned int) 0x00000002));
    (*((REG32 *) (0x40040008))) = data;


    while (((*((REG32 *) (0x4004000C))) & (((unsigned int) 0x00000010) | ((unsigned int) 0x00000004))) != ((unsigned int) 0x00000004));


    return (*((REG32 *) (0x40040008)));
}
# 89 "drivers/storage/spiflash/w25q16bv/w25q16bv.c"
uint8_t w25q16bvGetStatus()
{
  uint8_t status;

  gpioSetValue(0, 2, 0);
  w25q16bv_TransferByte(W25Q16BV_CMD_READSTAT1);
  status = w25q16bv_TransferByte(0xFF);
  gpioSetValue(0, 2, 1);

  return status & (0x01 | 0x02);
}
# 111 "drivers/storage/spiflash/w25q16bv/w25q16bv.c"
spiflashError_e w25q16bvWaitForReady()
{
  uint32_t timeout = 0;
  uint8_t status;

  while ( timeout < 0xFF )
  {
    status = w25q16bvGetStatus() & 0x01;
    if (status == 0)
    {
      break;
    }
    timeout++;
  }
  if ( timeout == 0xFF )
  {
    return SPIFLASH_ERROR_TIMEOUT_READY;
  }

  return SPIFLASH_ERROR_OK;
}
# 145 "drivers/storage/spiflash/w25q16bv/w25q16bv.c"
void w25q16bvGetUniqueID(uint8_t *buffer)
{
  uint8_t i;

  gpioSetValue(0, 2, 0);
  w25q16bv_TransferByte(W25Q16BV_CMD_READUNIQUEID);
  w25q16bv_TransferByte(0xFF);
  w25q16bv_TransferByte(0xFF);
  w25q16bv_TransferByte(0xFF);
  w25q16bv_TransferByte(0xFF);

  for (i = 0; i < 8; i++)
  {
    buffer[i] = w25q16bv_TransferByte(0xFF);
  }
  gpioSetValue(0, 2, 1);
}
# 177 "drivers/storage/spiflash/w25q16bv/w25q16bv.c"
void spiflashInit (void)
{

  sspInit(0, sspClockPolarity_Low, sspClockPhase_RisingEdge);



  _w25q16bvInitialised = 1;
}
# 194 "drivers/storage/spiflash/w25q16bv/w25q16bv.c"
spiflashSizeInfo_t spiflashGetSizeInfo(void)
{
  spiflashSizeInfo_t size;
  size.pageSize = 256;
  size.pageCount = 8192;
  size.sectorSize = 4096;
  size.sectorCount = 512;
  return size;
}
# 214 "drivers/storage/spiflash/w25q16bv/w25q16bv.c"
void spiflashGetManufacturerInfo (uint8_t *manufID, uint8_t *deviceID)
{
  if (!_w25q16bvInitialised) spiflashInit();




  gpioSetValue(0, 2, 0);
  w25q16bv_TransferByte(W25Q16BV_CMD_MANUFDEVID);
  w25q16bv_TransferByte(0x00);
  w25q16bv_TransferByte(0x00);
  w25q16bv_TransferByte(0x00);
  *manufID = w25q16bv_TransferByte(0xFF);
  *deviceID = w25q16bv_TransferByte(0xFF);
  gpioSetValue(0, 2, 1);
}
# 240 "drivers/storage/spiflash/w25q16bv/w25q16bv.c"
void spiflashWriteEnable (_Bool enable)
{
  if (!_w25q16bvInitialised) spiflashInit();



  gpioSetValue(0, 2, 0);
  w25q16bv_TransferByte(enable ? W25Q16BV_CMD_WRITEENABLE : W25Q16BV_CMD_WRITEDISABLE);
  gpioSetValue(0, 2, 1);
}
# 292 "drivers/storage/spiflash/w25q16bv/w25q16bv.c"
spiflashError_e spiflashReadBuffer (uint32_t address, uint8_t *buffer, uint32_t len)
{
  if (!_w25q16bvInitialised) spiflashInit();

  uint32_t a, i;
  a = i = 0;


  if (address >= 0x1FFFFF)
  {
    return SPIFLASH_ERROR_ADDROUTOFRANGE;
  }


  if (w25q16bvWaitForReady())
    return SPIFLASH_ERROR_TIMEOUT_READY;


  gpioSetValue(0, 2, 0);
  w25q16bv_TransferByte(W25Q16BV_CMD_READDATA);
  w25q16bv_TransferByte((address >> 16) & 0xFF);
  w25q16bv_TransferByte((address >> 8) & 0xFF);
  w25q16bv_TransferByte(address & 0xFF);

  for (a = address; a < address + len; a++, i++)
  {
    if (a > 0x1FFFFF)
    {

      return SPIFLASH_ERROR_ADDROVERFLOW;
    }
    buffer[i] = w25q16bv_TransferByte(0xFF);
  }
  gpioSetValue(0, 2, 1);

  return SPIFLASH_ERROR_OK;
}
# 361 "drivers/storage/spiflash/w25q16bv/w25q16bv.c"
spiflashError_e spiflashEraseSector (uint32_t sectorNumber)
{
  if (!_w25q16bvInitialised) spiflashInit();


  if (sectorNumber >= 512)
  {
    return SPIFLASH_ERROR_ADDROUTOFRANGE;
  }


  if (w25q16bvWaitForReady())
    return SPIFLASH_ERROR_TIMEOUT_READY;


  spiflashWriteEnable (1);


  uint8_t status;
  status = w25q16bvGetStatus();
  if (!(status & 0x02))
  {

    return SPIFLASH_ERROR_PROTECTIONERR;
  }


  uint32_t address = sectorNumber * 4096;
  gpioSetValue(0, 2, 0);
  w25q16bv_TransferByte(W25Q16BV_CMD_SECTERASE4);
  w25q16bv_TransferByte((address >> 16) & 0xFF);
  w25q16bv_TransferByte((address >> 8) & 0xFF);
  w25q16bv_TransferByte(address & 0xFF);
  gpioSetValue(0, 2, 1);



  while (w25q16bvGetStatus() & 0x01);

  return SPIFLASH_ERROR_OK;
}
# 428 "drivers/storage/spiflash/w25q16bv/w25q16bv.c"
spiflashError_e spiflashEraseChip (void)
{
  if (!_w25q16bvInitialised) spiflashInit();


  if (w25q16bvWaitForReady())
    return SPIFLASH_ERROR_TIMEOUT_READY;


  spiflashWriteEnable (1);


  uint8_t status;
  status = w25q16bvGetStatus();
  if (!(status & 0x02))
  {

    return SPIFLASH_ERROR_PROTECTIONERR;
  }


  gpioSetValue(0, 2, 0);
  w25q16bv_TransferByte(W25Q16BV_CMD_CHIPERASE);
  gpioSetValue(0, 2, 1);



  while (w25q16bvGetStatus() & 0x01);

  return SPIFLASH_ERROR_OK;
}
# 517 "drivers/storage/spiflash/w25q16bv/w25q16bv.c"
spiflashError_e spiflashWritePage (uint32_t address, uint8_t *buffer, uint32_t len)
{
  uint8_t status;
  uint32_t i;

  if (!_w25q16bvInitialised) spiflashInit();


  if (address >= 0x1FFFFF)
  {
    return SPIFLASH_ERROR_ADDROUTOFRANGE;
  }


  if (len > 256)
  {
    return SPIFLASH_ERROR_DATAEXCEEDSPAGESIZE;
  }


  if ((address % 256) + len > 256)
  {



    return SPIFLASH_ERROR_PAGEWRITEOVERFLOW;
  }


  if (w25q16bvWaitForReady())
    return SPIFLASH_ERROR_TIMEOUT_READY;


  spiflashWriteEnable (1);


  status = w25q16bvGetStatus();
  if (!(status & 0x02))
  {

    return SPIFLASH_ERROR_PROTECTIONERR;
  }


  gpioSetValue(0, 2, 0);
  w25q16bv_TransferByte(W25Q16BV_CMD_PAGEPROG);
  w25q16bv_TransferByte((address >> 16) & 0xFF);
  w25q16bv_TransferByte((address >> 8) & 0xFF);
  if (len == 256)
  {

    w25q16bv_TransferByte(0);
  }
  else
  {
    w25q16bv_TransferByte(address & 0xFF);
  }

  for (i = 0; i < len; i++)
  {
    w25q16bv_TransferByte(buffer[i]);
  }

  gpioSetValue(0, 2, 1);


  systickDelay(3);


  if (w25q16bvWaitForReady())
    return SPIFLASH_ERROR_TIMEOUT_READY;

  return SPIFLASH_ERROR_OK;
}
# 649 "drivers/storage/spiflash/w25q16bv/w25q16bv.c"
spiflashError_e spiflashWrite (uint32_t address, uint8_t *buffer, uint32_t len)
{
  uint32_t bytestowrite;
  uint32_t bufferoffset;
  spiflashError_e error;





  if ((address % 256) + len <= 256)
  {

    return spiflashWritePage(address, buffer, len);
  }


  bufferoffset = 0;
  while(len)
  {

    bytestowrite = 256 - (address % 256);

    error = spiflashWritePage(address, buffer+bufferoffset, bytestowrite);

    if (error)
      return error;

    address += bytestowrite;
    len -= bytestowrite;
    bufferoffset+=bytestowrite;


    if (len <= 256)
    {

      error = spiflashWritePage(address, buffer+bufferoffset, len);

      if (error)
        return error;

      len = 0;
    }
  }

  return SPIFLASH_ERROR_OK;
}
