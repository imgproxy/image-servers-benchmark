# ARM64

## JPEG

### imgproxy

```
checks.........................: 100.00% ✓ 24589     ✗ 0
data_received..................: 1.1 GB  3.5 MB/s
data_sent......................: 3.4 MB  11 kB/s
http_req_blocked...............: avg=3.38µs       min=865ns   med=2.86µs   max=1.85ms   p(90)=3.25µs  p(95)=4.07µs
http_req_connecting............: avg=15ns         min=0s      med=0s       max=304.45µs p(90)=0s      p(95)=0s
http_req_duration..............: avg=24.14ms      min=13.44ms med=23.67ms  max=91.52ms  p(90)=29.31ms p(95)=31.44ms
  { expected_response:true }...: avg=24.14ms      min=13.44ms med=23.67ms  max=91.52ms  p(90)=29.31ms p(95)=31.44ms
http_req_failed................: 0.00%   ✓ 0         ✗ 24589
http_req_receiving.............: avg=136.37µs     min=23.91µs med=125.92µs max=9.62ms   p(90)=193.6µs p(95)=219.08µs
http_req_sending...............: avg=17.19µs      min=4.4µs   med=14.64µs  max=1.51ms   p(90)=23.32µs p(95)=27.31µs
http_req_tls_handshaking.......: avg=0s           min=0s      med=0s       max=0s       p(90)=0s      p(95)=0s
http_req_waiting...............: avg=23.99ms      min=13.36ms med=23.52ms  max=91.4ms   p(90)=29.15ms p(95)=31.26ms
http_reqs......................: 24589   81.956301/s
http_res_body_size.............: avg=42571.517304 min=9736    med=42786    max=77581    p(90)=58035   p(95)=64648
iteration_duration.............: avg=24.38ms      min=13.68ms med=23.91ms  max=91.78ms  p(90)=29.56ms p(95)=31.68ms
iterations.....................: 24589   81.956301/s
vus............................: 2       min=2       max=2
vus_max........................: 2       min=2       max=2
```

### thumbor

```
checks.........................: 100.00% ✓ 19016     ✗ 0
data_received..................: 813 MB  2.7 MB/s
data_sent......................: 2.9 MB  9.7 kB/s
http_req_blocked...............: avg=3.64µs       min=927ns   med=2.8µs   max=3.34ms   p(90)=3.24µs  p(95)=4.15µs
http_req_connecting............: avg=48ns         min=0s      med=0s      max=748.01µs p(90)=0s      p(95)=0s
http_req_duration..............: avg=31.28ms      min=17.26ms med=30.86ms max=78.1ms   p(90)=37.39ms p(95)=40.03ms
  { expected_response:true }...: avg=31.28ms      min=17.26ms med=30.86ms max=78.1ms   p(90)=37.39ms p(95)=40.03ms
http_req_failed................: 0.00%   ✓ 0         ✗ 19016
http_req_receiving.............: avg=79.3µs       min=24.5µs  med=77.9µs  max=3.82ms   p(90)=90.11µs p(95)=95.38µs
http_req_sending...............: avg=18.89µs      min=6.01µs  med=16.26µs max=1.04ms   p(90)=25.82µs p(95)=29.36µs
http_req_tls_handshaking.......: avg=0s           min=0s      med=0s      max=0s       p(90)=0s      p(95)=0s
http_req_waiting...............: avg=31.19ms      min=17.18ms med=30.76ms max=78.01ms  p(90)=37.29ms p(95)=39.94ms
http_reqs......................: 19016   63.383205/s
http_res_body_size.............: avg=42509.842659 min=9637    med=42565   max=77582    p(90)=58026   p(95)=64647
iteration_duration.............: avg=31.53ms      min=17.5ms  med=31.1ms  max=78.32ms  p(90)=37.63ms p(95)=40.28ms
iterations.....................: 19016   63.383205/s
vus............................: 2       min=2       max=2
vus_max........................: 2       min=2       max=2
```

### imagor

```
checks.........................: 100.00% ✓ 10700    ✗ 0
data_received..................: 464 MB  1.5 MB/s
data_sent......................: 1.6 MB  5.4 kB/s
http_req_blocked...............: avg=3.41µs   min=1.23µs  med=2.95µs   max=1.22ms   p(90)=3.34µs   p(95)=4.13µs
http_req_connecting............: avg=35ns     min=0s      med=0s       max=215.5µs  p(90)=0s       p(95)=0s
http_req_duration..............: avg=55.82ms  min=31ms    med=54.78ms  max=116.18ms p(90)=65.21ms  p(95)=69.04ms
  { expected_response:true }...: avg=55.82ms  min=31ms    med=54.78ms  max=116.18ms p(90)=65.21ms  p(95)=69.04ms
http_req_failed................: 0.00%   ✓ 0        ✗ 10700
http_req_receiving.............: avg=191.58µs min=25.9µs  med=179.61µs max=7.18ms   p(90)=293.69µs p(95)=425.15µs
http_req_sending...............: avg=18.75µs  min=6.91µs  med=16.01µs  max=611.46µs p(90)=25.7µs   p(95)=29.26µs
http_req_tls_handshaking.......: avg=0s       min=0s      med=0s       max=0s       p(90)=0s       p(95)=0s
http_req_waiting...............: avg=55.61ms  min=30.92ms med=54.58ms  max=116.07ms p(90)=64.96ms  p(95)=68.83ms
http_reqs......................: 10700   35.66299/s
http_res_body_size.............: avg=43123.54 min=9851    med=43308    max=78598    p(90)=58779.6  p(95)=65490.4
iteration_duration.............: avg=56.06ms  min=31.22ms med=55.03ms  max=116.43ms p(90)=65.46ms  p(95)=69.31ms
iterations.....................: 10700   35.66299/s
vus............................: 2       min=2      max=2
vus_max........................: 2       min=2      max=2
```

## PNG

### imgproxy

```
checks.........................: 100.00% ✓ 6691      ✗ 0
data_received..................: 2.2 GB  7.3 MB/s
data_sent......................: 930 kB  3.1 kB/s
http_req_blocked...............: avg=3.45µs       min=1.27µs  med=2.96µs   max=955.98µs p(90)=3.4µs    p(95)=3.89µs
http_req_connecting............: avg=88ns         min=0s      med=0s       max=412.27µs p(90)=0s       p(95)=0s
http_req_duration..............: avg=89.41ms      min=29.92ms med=87.99ms  max=170.02ms p(90)=109.99ms p(95)=118.48ms
  { expected_response:true }...: avg=89.41ms      min=29.92ms med=87.99ms  max=170.02ms p(90)=109.99ms p(95)=118.48ms
http_req_failed................: 0.00%   ✓ 0         ✗ 6691
http_req_receiving.............: avg=338.54µs     min=55.18µs med=319.47µs max=13.24ms  p(90)=532.29µs p(95)=576.81µs
http_req_sending...............: avg=17.51µs      min=6.95µs  med=14.85µs  max=3.5ms    p(90)=22.44µs  p(95)=26.21µs
http_req_tls_handshaking.......: avg=0s           min=0s      med=0s       max=0s       p(90)=0s       p(95)=0s
http_req_waiting...............: avg=89.06ms      min=29.71ms med=87.68ms  max=169.74ms p(90)=109.56ms p(95)=118.1ms
http_reqs......................: 6691    22.297412/s
http_res_body_size.............: avg=328668.49051 min=68993   med=335813   max=481609   p(90)=404696   p(95)=442921.5
iteration_duration.............: avg=89.66ms      min=30.14ms med=88.24ms  max=170.26ms p(90)=110.26ms p(95)=118.74ms
iterations.....................: 6691    22.297412/s
vus............................: 2       min=2       max=2
vus_max........................: 2       min=2       max=2
```

### thumbor

```
checks.........................: 100.00% ✓ 3694      ✗ 0
data_received..................: 1.2 GB  4.1 MB/s
data_sent......................: 565 kB  1.9 kB/s
http_req_blocked...............: avg=4.45µs        min=1.63µs  med=2.86µs   max=3.9ms    p(90)=3.23µs   p(95)=3.96µs
http_req_connecting............: avg=998ns         min=0s      med=0s       max=3.52ms   p(90)=0s       p(95)=0s
http_req_duration..............: avg=162.2ms       min=77.23ms med=162.04ms max=274.67ms p(90)=197.72ms p(95)=214.77ms
  { expected_response:true }...: avg=162.2ms       min=77.23ms med=162.04ms max=274.67ms p(90)=197.72ms p(95)=214.77ms
http_req_failed................: 0.00%   ✓ 0         ✗ 3694
http_req_receiving.............: avg=261.75µs      min=64.59µs med=183.76µs max=10.22ms  p(90)=449.66µs p(95)=490.41µs
http_req_sending...............: avg=19.72µs       min=9.78µs  med=17.03µs  max=518.31µs p(90)=27.31µs  p(95)=30.52µs
http_req_tls_handshaking.......: avg=0s            min=0s      med=0s       max=0s       p(90)=0s       p(95)=0s
http_req_waiting...............: avg=161.92ms      min=77.14ms med=161.81ms max=274.21ms p(90)=197.45ms p(95)=214.5ms
http_reqs......................: 3694    12.307963/s
http_res_body_size.............: avg=329252.839469 min=67567   med=329305.5 max=492112   p(90)=420058   p(95)=452664
iteration_duration.............: avg=162.46ms      min=77.47ms med=162.3ms  max=274.95ms p(90)=197.97ms p(95)=215.02ms
iterations.....................: 3694    12.307963/s
vus............................: 2       min=2       max=2
vus_max........................: 2       min=2       max=2
```

### imagor

```
checks.........................: 100.00% ✓ 4052      ✗ 0
data_received..................: 1.7 GB  5.7 MB/s
data_sent......................: 616 kB  2.1 kB/s
http_req_blocked...............: avg=4.28µs        min=1.33µs  med=2.95µs   max=2.96ms   p(90)=3.32µs   p(95)=3.59µs
http_req_connecting............: avg=125ns         min=0s      med=0s       max=346.16µs p(90)=0s       p(95)=0s
http_req_duration..............: avg=147.85ms      min=73.55ms med=146.39ms max=262.91ms p(90)=180.85ms p(95)=191.81ms
  { expected_response:true }...: avg=147.85ms      min=73.55ms med=146.39ms max=262.91ms p(90)=180.85ms p(95)=191.81ms
http_req_failed................: 0.00%   ✓ 0         ✗ 4052
http_req_receiving.............: avg=667.67µs      min=80.15µs med=632.9µs  max=10.01ms  p(90)=1.05ms   p(95)=1.19ms
http_req_sending...............: avg=17.67µs       min=8.68µs  med=15.24µs  max=347.41µs p(90)=23.08µs  p(95)=27.06µs
http_req_tls_handshaking.......: avg=0s            min=0s      med=0s       max=0s       p(90)=0s       p(95)=0s
http_req_waiting...............: avg=147.16ms      min=73.26ms med=145.78ms max=262.56ms p(90)=179.96ms p(95)=191.32ms
http_reqs......................: 4052    13.502603/s
http_res_body_size.............: avg=420644.352912 min=93811   med=433935   max=586393   p(90)=531322   p(95)=562098
iteration_duration.............: avg=148.1ms       min=73.77ms med=146.64ms max=263.15ms p(90)=181.11ms p(95)=192.05ms
iterations.....................: 4052    13.502603/s
vus............................: 2       min=2       max=2
vus_max........................: 2       min=2       max=2
```

## WebP

### imgproxy

```
checks.........................: 100.00% ✓ 7875      ✗ 0
data_received..................: 246 MB  820 kB/s
data_sent......................: 1.1 MB  3.7 kB/s
http_req_blocked...............: avg=3.44µs       min=872ns   med=2.91µs   max=876.24µs p(90)=3.28µs   p(95)=3.95µs
http_req_connecting............: avg=69ns         min=0s      med=0s       max=363.22µs p(90)=0s       p(95)=0s
http_req_duration..............: avg=75.93ms      min=30.28ms med=74.37ms  max=168.87ms p(90)=100.36ms p(95)=107.67ms
  { expected_response:true }...: avg=75.93ms      min=30.28ms med=74.37ms  max=168.87ms p(90)=100.36ms p(95)=107.67ms
http_req_failed................: 0.00%   ✓ 0         ✗ 7875
http_req_receiving.............: avg=130.94µs     min=26.95µs med=135.36µs max=5.03ms   p(90)=183.77µs p(95)=197.67µs
http_req_sending...............: avg=17.84µs      min=5.9µs   med=14.85µs  max=2.44ms   p(90)=23.56µs  p(95)=27.64µs
http_req_tls_handshaking.......: avg=0s           min=0s      med=0s       max=0s       p(90)=0s       p(95)=0s
http_req_waiting...............: avg=75.79ms      min=30ms    med=74.25ms  max=168.12ms p(90)=100.26ms p(95)=107.52ms
http_reqs......................: 7875    26.243328/s
http_res_body_size.............: avg=30950.982095 min=4576    med=30876    max=66786    p(90)=48016    p(95)=52595
iteration_duration.............: avg=76.18ms      min=30.5ms  med=74.63ms  max=169.1ms  p(90)=100.66ms p(95)=107.9ms
iterations.....................: 7875    26.243328/s
vus............................: 2       min=2       max=2
vus_max........................: 2       min=2       max=2
```

### thumbor

```
checks.........................: 100.00% ✓ 4934      ✗ 0
data_received..................: 160 MB  534 kB/s
data_sent......................: 765 kB  2.5 kB/s
http_req_blocked...............: avg=3.77µs      min=2.09µs  med=2.87µs   max=1.53ms   p(90)=3.26µs   p(95)=4.17µs
http_req_connecting............: avg=85ns        min=0s      med=0s       max=258.36µs p(90)=0s       p(95)=0s
http_req_duration..............: avg=121.35ms    min=62.38ms med=120.74ms max=214.8ms  p(90)=144.66ms p(95)=154.78ms
  { expected_response:true }...: avg=121.35ms    min=62.38ms med=120.74ms max=214.8ms  p(90)=144.66ms p(95)=154.78ms
http_req_failed................: 0.00%   ✓ 0         ✗ 4934
http_req_receiving.............: avg=91.04µs     min=33.84µs med=78.21µs  max=624.27µs p(90)=111.74µs p(95)=201.6µs
http_req_sending...............: avg=20.34µs     min=11.88µs med=17.86µs  max=2.89ms   p(90)=26.23µs  p(95)=29.46µs
http_req_tls_handshaking.......: avg=0s          min=0s      med=0s       max=0s       p(90)=0s       p(95)=0s
http_req_waiting...............: avg=121.24ms    min=62.31ms med=120.64ms max=214.09ms p(90)=144.49ms p(95)=154.68ms
http_reqs......................: 4934    16.444144/s
http_res_body_size.............: avg=32229.50304 min=4622    med=32348    max=69676    p(90)=49220    p(95)=53860
iteration_duration.............: avg=121.6ms     min=62.6ms  med=120.98ms max=215.86ms p(90)=144.92ms p(95)=155.03ms
iterations.....................: 4934    16.444144/s
vus............................: 2       min=2       max=2
vus_max........................: 2       min=2       max=2
```

### imagor

```
checks.........................: 100.00% ✓ 5012      ✗ 0
data_received..................: 164 MB  545 kB/s
data_sent......................: 772 kB  2.6 kB/s
http_req_blocked...............: avg=3.58µs       min=830ns   med=2.9µs    max=1.27ms   p(90)=3.27µs   p(95)=3.73µs
http_req_connecting............: avg=182ns        min=0s      med=0s       max=731.72µs p(90)=0s       p(95)=0s
http_req_duration..............: avg=119.49ms     min=67.75ms med=117.6ms  max=199.1ms  p(90)=142.63ms p(95)=154.95ms
  { expected_response:true }...: avg=119.49ms     min=67.75ms med=117.6ms  max=199.1ms  p(90)=142.63ms p(95)=154.95ms
http_req_failed................: 0.00%   ✓ 0         ✗ 5012
http_req_receiving.............: avg=205.98µs     min=26.49µs med=162.27µs max=10.66ms  p(90)=409.36µs p(95)=579.77µs
http_req_sending...............: avg=19.68µs      min=5.83µs  med=16.27µs  max=1.1ms    p(90)=26.27µs  p(95)=29.7µs
http_req_tls_handshaking.......: avg=0s           min=0s      med=0s       max=0s       p(90)=0s       p(95)=0s
http_req_waiting...............: avg=119.26ms     min=67.6ms  med=117.4ms  max=199.02ms p(90)=142.28ms p(95)=154.6ms
http_reqs......................: 5012    16.699987/s
http_res_body_size.............: avg=32381.102554 min=4928    med=32420    max=69710    p(90)=49394    p(95)=54426
iteration_duration.............: avg=119.74ms     min=68.08ms med=117.85ms max=199.33ms p(90)=142.89ms p(95)=155.18ms
iterations.....................: 5012    16.699987/s
vus............................: 2       min=2       max=2
vus_max........................: 2       min=2       max=2
```

## AVIF

### imgproxy

```
checks.........................: 100.00% ✓ 5337      ✗ 0
data_received..................: 211 MB  702 kB/s
data_sent......................: 753 kB  2.5 kB/s
http_req_blocked...............: avg=3.57µs      min=784ns   med=2.95µs   max=934.34µs p(90)=3.37µs   p(95)=4.13µs
http_req_connecting............: avg=100ns       min=0s      med=0s       max=386.93µs p(90)=0s       p(95)=0s
http_req_duration..............: avg=112.17ms    min=55.56ms med=109.46ms max=227.82ms p(90)=149.15ms p(95)=162.27ms
  { expected_response:true }...: avg=112.17ms    min=55.56ms med=109.46ms max=227.82ms p(90)=149.15ms p(95)=162.27ms
http_req_failed................: 0.00%   ✓ 0         ✗ 5337
http_req_receiving.............: avg=156.48µs    min=24.32µs med=149.12µs max=2.22ms   p(90)=206.59µs p(95)=291.3µs
http_req_sending...............: avg=17.67µs     min=6.17µs  med=14.65µs  max=1.15ms   p(90)=23.49µs  p(95)=27.02µs
http_req_tls_handshaking.......: avg=0s          min=0s      med=0s       max=0s       p(90)=0s       p(95)=0s
http_req_waiting...............: avg=112ms       min=55.4ms  med=109.28ms max=227.69ms p(90)=148.99ms p(95)=162.05ms
http_reqs......................: 5337    17.785054/s
http_res_body_size.............: avg=39183.40416 min=5985    med=38330    max=89787    p(90)=59813    p(95)=67163
iteration_duration.............: avg=112.42ms    min=55.8ms  med=109.7ms  max=228.04ms p(90)=149.39ms p(95)=162.56ms
iterations.....................: 5337    17.785054/s
vus............................: 2       min=2       max=2
vus_max........................: 2       min=2       max=2
```

### thumbor

```
checks.........................: 100.00% ✓ 4129      ✗ 0
data_received..................: 162 MB  541 kB/s
data_sent......................: 640 kB  2.1 kB/s
http_req_blocked...............: avg=3.75µs       min=1.49µs  med=2.83µs   max=1.56ms   p(90)=3.24µs   p(95)=3.98µs
http_req_connecting............: avg=295ns        min=0s      med=0s       max=1.04ms   p(90)=0s       p(95)=0s
http_req_duration..............: avg=145.09ms     min=48.53ms med=143.89ms max=260.94ms p(90)=189.41ms p(95)=211.56ms
  { expected_response:true }...: avg=145.09ms     min=48.53ms med=143.89ms max=260.94ms p(90)=189.41ms p(95)=211.56ms
http_req_failed................: 0.00%   ✓ 0         ✗ 4129
http_req_receiving.............: avg=82.61µs      min=31.47µs med=77.27µs  max=813.33µs p(90)=95.6µs   p(95)=106.42µs
http_req_sending...............: avg=19.41µs      min=8.12µs  med=16.63µs  max=532.81µs p(90)=25.76µs  p(95)=28.45µs
http_req_tls_handshaking.......: avg=0s           min=0s      med=0s       max=0s       p(90)=0s       p(95)=0s
http_req_waiting...............: avg=144.98ms     min=48.44ms med=143.79ms max=260.82ms p(90)=189.29ms p(95)=211.44ms
http_reqs......................: 4129    13.759703/s
http_res_body_size.............: avg=39064.214338 min=5890    med=38230    max=89485    p(90)=59704    p(95)=66995
iteration_duration.............: avg=145.33ms     min=48.76ms med=144.11ms max=261.2ms  p(90)=189.65ms p(95)=211.84ms
iterations.....................: 4129    13.759703/s
vus............................: 2       min=2       max=2
vus_max........................: 2       min=2       max=2
```

### imagor

```
checks.........................: 100.00% ✓ 643      ✗ 0
data_received..................: 24 MB   80 kB/s
data_sent......................: 99 kB   330 B/s
http_req_blocked...............: avg=6.49µs       min=2.02µs   med=2.92µs   max=1.54ms   p(90)=3.28µs   p(95)=4.1µs
http_req_connecting............: avg=1.91µs       min=0s       med=0s       max=1.04ms   p(90)=0s       p(95)=0s
http_req_duration..............: avg=933.28ms     min=244.03ms med=912.57ms max=2.18s    p(90)=1.22s    p(95)=1.36s
  { expected_response:true }...: avg=933.28ms     min=244.03ms med=912.57ms max=2.18s    p(90)=1.22s    p(95)=1.36s
http_req_failed................: 0.00%   ✓ 0        ✗ 643
http_req_receiving.............: avg=296.58µs     min=53.95µs  med=206.97µs max=10.05ms  p(90)=392.25µs p(95)=599.17µs
http_req_sending...............: avg=16.72µs      min=11.84µs  med=15.08µs  max=163.87µs p(90)=21.85µs  p(95)=25µs
http_req_tls_handshaking.......: avg=0s           min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s
http_req_waiting...............: avg=932.96ms     min=243.91ms med=912.24ms max=2.17s    p(90)=1.22s    p(95)=1.36s
http_reqs......................: 643     2.141814/s
http_res_body_size.............: avg=37165.088647 min=5037     med=37333    max=78942    p(90)=57021    p(95)=61484
iteration_duration.............: avg=933.52ms     min=244.26ms med=912.82ms max=2.18s    p(90)=1.22s    p(95)=1.36s
iterations.....................: 643     2.141814/s
vus............................: 2       min=2      max=2
vus_max........................: 2       min=2      max=2
```
