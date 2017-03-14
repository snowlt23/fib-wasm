
import times
import strutils

proc fibonacci*(n: int64): int64 =
  if n <= 1'i64:
    1'i64
  else:
    fibonacci(n - 1'i64) + fibonacci(n - 2'i64)

proc main() =
  let starttime = times.epochTime()
  echo "fibonacci(46) = ", fibonacci(46)
  let endtime = times.epochTime()
  echo "elapsed: $# sec" % [$(endtime - starttime)]

main()
