# seven_days
Gee

将使用 Go 语言实现一个简单的 Web 框架，实际代码量只有5K。Gin是我非常喜欢的一个框架，与Python中的Flask很像，小而美。

Gee框架参考了Gin，大家可以看到很多Gin的影子。

时间关系，同时为了尽可能地简洁明了，这个框架中的很多部分实现的功能都很简单，但是尽可能地体现一个框架核心的设计原则。例如Router的设计，虽然支持的动态路由规则有限，但为了性能考虑匹配算法是用Trie树实现的，Router最重要的指标之一便是性能。

GeeCache

基本上模仿了 groupcache 的实现，为了将代码量限制在 500 行左右（groupcache 约 3000 行），裁剪了部分功能。但总体实现上，还是与 groupcache 非常接近的。支持特性有：

单机缓存和基于 HTTP 的分布式缓存
最近最少访问(Least Recently Used, LRU) 缓存策略
使用 Go 锁机制防止缓存击穿
使用一致性哈希选择节点，实现负载均衡
使用 protobuf 优化节点间二进制通信

GeeRPC

GeeRPC 的目的是以最少的代码，实现 RPC 框架中最为重要的部分，帮助大家理解 RPC 框架在设计时需要考虑什么。代码简洁是第一位的，功能是第二位的。

均选自https://geektutu.com/
