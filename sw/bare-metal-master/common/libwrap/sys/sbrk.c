/* See LICENSE of license details. */

#include <stddef.h>
#include "weak_under_alias.h"

void *__wrap_sbrk(ptrdiff_t incr)
{
  extern char _end[];
  static char _heap_end[1000];
  static char *curbrk = _end;

  if ((curbrk + incr < _end) || (curbrk + incr > _heap_end))
    return NULL - 1;

  curbrk += incr;
  return curbrk - incr;
}
weak_under_alias(sbrk);
