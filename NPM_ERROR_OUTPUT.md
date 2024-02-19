<code>
 => ERROR [dependencies 4/5] RUN npm ci                                                                                                                                                                     11.2s
------
 > [dependencies 4/5] RUN npm ci:
2.486 2024-02-19T11:57:17.512Z agentkeepalive sock[0#registry.npmjs.org:443::::::::true:::::::::::::] create, timeout 300001ms
3.710 2024-02-19T11:57:18.736Z agentkeepalive sock[0#registry.npmjs.org:443::::::::true:::::::::::::](requests: 1, finished: 1) free
4.845 npm WARN deprecated uuid@3.4.0: Please upgrade  to version 7 or higher.  Older versions may use Math.random() in certain circumstances, which is known to be problematic.  See https://v8.dev/blog/math-random for details.
11.14 npm ERR! code 1
11.14 npm ERR! path /usr/src/app/node_modules/@prisma/engines
11.14 npm ERR! command failed
11.14 npm ERR! command sh -c node scripts/postinstall.js
11.14 npm ERR! 2024-02-19T11:57:23.527Z prisma:get-platform  Found distro info:
11.14 npm ERR! {
11.14 npm ERR!   "targetDistro": "musl",
11.14 npm ERR!   "familyDistro": "alpine",
11.14 npm ERR!   "originalDistro": "alpine"
11.15 npm ERR! }
11.15 npm ERR! 2024-02-19T11:57:23.529Z prisma:get-platform  Don't know any platform-specific paths for "alpine" on x64 (x86_64)
11.15 npm ERR! 2024-02-19T11:57:23.529Z prisma:get-platform  Falling back to "ldconfig" and other generic paths
11.15 npm ERR! 2024-02-19T11:57:23.547Z prisma:get-platform  Found libssl.so file using "ldconfig" or other generic paths: libssl.so.3
11.15 npm ERR! 2024-02-19T11:57:23.547Z prisma:get-platform  The parsed libssl version is: 3.0.x
11.15 npm ERR! 2024-02-19T11:57:24.109Z prisma:fetch-engine:download  copying /root/.cache/prisma/master/23fdc5965b1e05fc54e5f26ed3de66776b93de64/linux-musl-openssl-3.0.x/libquery-engine to /usr/src/app/node_modules/@prisma/engines/libquery_engine-linux-musl-openssl-3.0.x.so.node
11.15 npm ERR! 2024-02-19T11:57:24.245Z prisma:fetch-engine:download  copying /root/.cache/prisma/master/23fdc5965b1e05fc54e5f26ed3de66776b93de64/linux-musl-openssl-3.0.x/schema-engine to /usr/src/app/node_modules/@prisma/engines/schema-engine-linux-musl-openssl-3.0.x
11.15 npm ERR! node:events:491
11.15 npm ERR!       throw er; // Unhandled 'error' event
11.15 npm ERR!       ^
11.15 npm ERR!
11.15 npm ERR! Error: ENOENT: no such file or directory, open '/usr/src/app/node_modules/@prisma/engines/libquery_engine-linux-musl-openssl-3.0.x.so.node'
11.15 npm ERR! Emitted 'error' event on ReadStream instance at:
11.15 npm ERR!     at emitErrorNT (node:internal/streams/destroy:151:8)
11.15 npm ERR!     at emitErrorCloseNT (node:internal/streams/destroy:116:3)
11.15 npm ERR!     at process.processTicksAndRejections (node:internal/process/task_queues:82:21) {
11.15 npm ERR!   errno: -2,
11.15 npm ERR!   code: 'ENOENT',
11.15 npm ERR!   syscall: 'open',
11.15 npm ERR!   path: '/usr/src/app/node_modules/@prisma/engines/libquery_engine-linux-musl-openssl-3.0.x.so.node'
11.15 npm ERR! }
11.15 npm ERR!
11.15 npm ERR! Node.js v18.14.2
11.15
11.15 npm ERR! A complete log of this run can be found in:
11.15 npm ERR!     /root/.npm/_logs/2024-02-19T11_57_16_953Z-debug-0.log
------
Dockerfile:22
--------------------
  20 |     RUN mv ./node_modules /tmp/node_modules
  21 |
  22 | >>> RUN npm ci
  23 |     RUN npx prisma generate
  24 |
--------------------
ERROR: failed to solve: process "/bin/sh -c npm ci" did not complete successfully: exit code: 1
</code>