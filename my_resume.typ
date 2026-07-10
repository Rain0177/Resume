#import "resume-template.typ": *

#let (resume-header, resume-entry) = setup-styles(
  font-size: 13pt,
  element-spaciness: 1,
  sans-serif-font: "Microsoft YaHei",
  serif-font: "Microsoft YaHei",
  alt-font: "Microsoft YaHei",
)

#show: resume-header.with(
  author: "郭沁阳",
  telephone: "15339050275",
  profile-image: "./pic/3551751ef9feb40da0e318c0e1878102.jpg",
  email: "g15339050275@163.com",
  job-intention: "C++开发工程师",
  age: "24",
  github-id: "Rain0177",
)
#v(-0.8em)
= 教育经历
#v(0.3em)
#resume-entry(
  title: "西安电子科技大学",
  subtitle: "新一代电子信息工程（含量子工程）,硕士",
  date: "2024.09 - 至今",
)[
]
#v(-1em)
#resume-entry(
  title: "哈尔滨工程大学",
  subtitle: "电子信息工程 ,学士",
  date: "2020.09 - 2024.06",
)[
]

#v(-0.8em)
= 专业技能
#set enum(spacing: 0.8em)
+ 熟悉 C/C++，熟练使用 C 的指针应用及内存管理、 C++的封装继承多态、 STL 常用容器、 C++11 常用特性
+ 对 TCP/IP 网络模型有清晰的理解，熟悉 TCP/IP、 UDP 等协议，了解 HTTP/HTTPS、 DNS 等网络协议；
+ 熟悉网络编程，熟悉 Linux 系统的 I/O 复用接口，能够使用协程、 reactor 等模型进行服务器开发
+ 深入理解连接池、线程池的实现原理，熟悉多进程、多线程、协程编程，掌握常用设计模式
+ 掌握常用的数据结构（链表、栈、队列、二叉树等），熟练使用排序、贪心、动态规划等算法；
+ 熟悉 Linux 系统编程、Redis、MySQL、Kafka、gRPC等中间件的使用
+ 熟练运用CMake / Makefile、GDB、Git工具链进行开发

#v(-0.8em)
= 获奖经历
- 研究生学业三等奖学金（2025）
- 研究生学业二等奖学金（2024）
- 全国大学生数学竞赛黑龙江赛区一等奖（2023）

#v(-0.8em)
= 项目经历

#resume-entry(
  title: "基于多网络模型的 KV 存储引擎",
  subtitle: " C语言独立开发",
  date: "2025.07 - 2025.08",
)[
  *项目描述：*
  实现高性能键值存储服务器，支持三种 I/O 多路复用网络模型（Reactor/Proactor/协程）和三种存储引擎（哈希表/红黑树/数组）实现自动化测试框架。

  *主要工作：*
  + 设计并实现私有文本协议（解析、路由、响应），支持 15 种命令跨 3 个存储引擎的统一分发
  + 独立实现三种网络模型：基于 epoll 的 #emph[Reactor]、基于 io_uring 的 #emph[Proactor]、基于#emph[NtyCo用户态协程的并发模型]
  + 手写三种 KV 存储引擎：#emph[拉链哈希表]（O(1) 查询）、#emph[红黑树]（O(log n) 有序遍历）、#emph[动态数组]（线性扫描）
  + 编写自动化测试用例，覆盖各引擎全量命令，支持万级请求的 QPS 压测统计。

  *技术栈：* C、Linux 系统编程、 epoll、 io_uring、 动态数组、哈希表、红黑树
]

#resume-entry(
  title: "XX干扰机功能升级",
  subtitle: "  C++识别模块开发",
  date: "2025.09 - 2026.03",
)[
  *项目描述：*

  设计并实现了一套从高速信号采集到智能分选识别的全流程处理系统。针对不同脉冲重复周期、脉冲宽度、调制类型的雷达信号进行高速信号采集，并对采集到的信号针对信号脉
  间、脉内的正进行分选并输出信号分析结果，信号参数通过数据库进行管理，通过 QT 界面实现从信号采集到信号分析与结果输出的
  信号分选识别全流程处理。

  *主要工作：*
  + 过 Matlab 实现的目标信号的模型构建
  + 利用#emph[Mysql]存储信号参数，同时利用#emph[数据库连接池]保证在高并发情况下的性能
  + 利用Qt实现显示控制界面，实现从信号采集到数据处理的全流程操作

  *技术栈：* C++、Mysql、 连接池、 多线程编程
]

#resume-entry(
  title: "基于 C++实现的分布式即时通讯系统",
  subtitle: " C++ 独立开发",
  date: "2026.03 - 2026.06",
)[
  *项目描述：*
  基于 C++实现的分布式即时通讯系统，支持 websocket、 http、 tcp 协议。接入层通过负载均衡接入客户端，逻辑层负责解析客户端请求，进行业务分发， 结合数据层、文件层和路由层协同工作，实现高效的消息服务。本项目支持用户登录，单聊、群聊、未读消息计数，展示最近会话列表、在线与离线文件传输等服务，通过分布式部署可支撑海量在线用户。

  *主要工作：*
  + 基于#emph[reactor]模型实现网络 io 模块，#emph[优化用户缓冲区设计]，支持大规模客户端请求的并发处理
  + 在客户端和消息服务器之间采用#emph[Nginx]实现负载均衡模块，实时监控服务器连接数，为客户端分配最优接入节点
  + 在消息服务器和数据库模块之间采用#emph[kafka]作为消息队列，实现消息异步与削峰填谷，增强系统的并发与可靠性
  + 采用#emph[redis]管理分布式#emph[session]，配合#emph[异步连接池]，降低数据库访问延迟。
  + 各服务器实例通过#emph[线程池]或#emph[多进程模式]充分发挥多核性能，实现任务并发调度。

  *技术栈：* C++、 mysql、 Redis、 Kafka、 ZooKeeper、 Protobuf、Nginx
]

