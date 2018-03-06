CREATE TABLE `z_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `img_url` varchar(30) DEFAULT NULL COMMENT '图片地址',
  `skip_url` varchar(50) DEFAULT NULL COMMENT '跳转地址',
  `sort_level` int(5) DEFAULT NULL COMMENT '排序级别',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='横幅广告表';

CREATE TABLE `z_course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程基本信息主键id',
  `course_code` varchar(32) DEFAULT NULL COMMENT '课程代码',
  `course_name` varchar(100) DEFAULT NULL COMMENT '课程名称',
  `course_info` varchar(100) DEFAULT NULL COMMENT '课程摘要',
  `course_content` varchar(200) DEFAULT NULL COMMENT '课程内容',
  `teacher_id` int(11) NOT NULL COMMENT '讲师id',
  `assist_count` int(15) DEFAULT '0' COMMENT '学员点赞的数量',
  `price` double(10,2) DEFAULT NULL COMMENT '课程对应的价格',
  `share_count` int(10) DEFAULT '0' COMMENT '分享数量',
  `select_flag` int(1) DEFAULT NULL COMMENT '首页版块1的标志：精选好课',
  `thumb_url` varchar(50) DEFAULT NULL COMMENT '缩略图url',
  `special_flag` int(1) DEFAULT NULL COMMENT '首页版块2的标志：精选专题',
  `special_url` varchar(50) DEFAULT NULL COMMENT '首页版块2图片url',
  `fash_flag` int(1) DEFAULT NULL COMMENT '首页版块3的标志：文艺时尚',
  `fash_url` varchar(50) DEFAULT NULL COMMENT '首页版块3图片url',
  `valid` int(10) DEFAULT NULL COMMENT '课程有效期(单位:天)',
  `watch_count` int(10) DEFAULT NULL COMMENT '课程观看的次数',
  `hold1` varchar(32) DEFAULT NULL COMMENT '扩展字段1(目前代表课程对应的目录id)',
  `hold2` varchar(32) DEFAULT NULL COMMENT '扩展字段2',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程基本信息';


CREATE TABLE `z_course_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `student_id` int(11) NOT NULL COMMENT '学员id',
  `course_id` int(11) NOT NULL COMMENT '课程id',
  `collection_time` datetime NOT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程收藏表';

CREATE TABLE `z_course_dir` (
  `dir_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '目录主键',
  `dir_name` varchar(50) DEFAULT NULL COMMENT '目录名称',
  `dir_code` varchar(20) DEFAULT NULL COMMENT '目录编号(如果是一级目录编号为空 二级编号对应的一级编号id)',
  `course_level` int(1) DEFAULT NULL COMMENT '目录级别(1代表一级,2代表二级)',
  `img_url` varchar(50) DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`dir_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程目录';

CREATE TABLE `z_course_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `student_id` int(11) NOT NULL COMMENT '学员id',
  `course_id` int(11) NOT NULL COMMENT '课程id',
  `like_time` datetime NOT NULL COMMENT '点赞时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学员对课程的点赞数';

CREATE TABLE `z_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `student_id` int(11) NOT NULL COMMENT '反馈人id',
  `context` varchar(200) DEFAULT NULL COMMENT '反馈内容',
  `feedback_time` datetime NOT NULL COMMENT '反馈时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='有奖反馈表';

CREATE TABLE `z_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_no` varchar(13) NOT NULL COMMENT '订单号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `course_id` int(11) NOT NULL COMMENT '课程id',
  `student_id` int(11) NOT NULL COMMENT '学员id',
  `pay_flag` int(1) NOT NULL COMMENT '是否付款',
  `payway_id` int(11) NOT NULL COMMENT '支付方式id',
  `pay_time` datetime NOT NULL COMMENT '支付时间',
  `expire_time` datetime NOT NULL COMMENT '到期时间',
  `serial_no` varchar(10) NOT NULL COMMENT '第三方流水号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单表';

CREATE TABLE `z_pay_way` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `payway_code` varchar(2) NOT NULL COMMENT '支付方式编码',
  `payway_name` varchar(32) NOT NULL COMMENT '支付方式名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付方式';

CREATE TABLE `z_question_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `context` varchar(200) DEFAULT NULL COMMENT '评论的内容',
  `sup_no` int(10) DEFAULT NULL COMMENT '上级编号',
  `create_date` datetime DEFAULT NULL COMMENT '回复时间',
  `reply_id` int(11) NOT NULL COMMENT '回复人id',
  `by_reply_id` int(11) NOT NULL COMMENT '被回复人对应id',
  `question_id` int(11) NOT NULL,
  `flag` int(1) DEFAULT NULL COMMENT '1代表 学生回复老师  2代表老师回复学生',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='回复表';

CREATE TABLE `z_register_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，自增',
  `mobile` char(11) NOT NULL COMMENT '接收短信的手机号码',
  `code` char(6) DEFAULT NULL,
  `creationdate` bigint(20) NOT NULL DEFAULT '0' COMMENT '保存的时间戳',
  `error_code` char(6) DEFAULT NULL COMMENT '短信服务器返回的错误码',
  `reason` varchar(50) DEFAULT NULL COMMENT '返回的说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='验证码表';

CREATE TABLE `z_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键  自增',
  `s_type` int(1) DEFAULT NULL COMMENT '0:差评  1好评  2中评',
  `s_level` int(1) DEFAULT NULL COMMENT '星级级别',
  `score_time` datetime DEFAULT NULL COMMENT '打分时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评分表';

CREATE TABLE `z_search_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `keyword_name` varchar(20) DEFAULT NULL COMMENT '关键字名称',
  `search_count` int(5) DEFAULT NULL COMMENT '搜索次数',
  `choose_flag` int(1) DEFAULT '0' COMMENT '是否推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='搜索关键字';

CREATE TABLE `z_soft_update` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增',
  `versionCode` int(10) NOT NULL COMMENT '版本号，每次升级，依次递增',
  `versionName` varchar(100) NOT NULL COMMENT '版本号名称,对外',
  `softName` varchar(255) DEFAULT NULL COMMENT '安装包名称',
  `updateDescription` varchar(500) NOT NULL COMMENT '软件描述',
  `downloarUrl` varchar(255) DEFAULT NULL COMMENT '下载连接地址',
  `creationDate` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `z_stu_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `context` longtext COMMENT '问题的具体内容',
  `view_count` varchar(10) DEFAULT '0' COMMENT '该问题的浏览数量',
  `student_id` int(11) NOT NULL COMMENT '提问人id',
  `teacher_id` int(11) NOT NULL COMMENT '回答人id',
  `course_id` int(11) NOT NULL COMMENT '针对的课程id',
  `create_time` datetime NOT NULL COMMENT '该问题的创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存放学员提出的相关课程问题';

CREATE TABLE `z_student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学员基本信息主键id',
  `phone` varchar(11) NOT NULL COMMENT '登录名(手机号)',
  `password` varchar(32) NOT NULL COMMENT '登录密码',
  `nick_name` varchar(20) DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(200) DEFAULT NULL COMMENT '头像所在的地址',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `gender` int(1) DEFAULT NULL COMMENT '性别， 枚举值包括 男（0）女（1）',
  `signature` varchar(200) DEFAULT '欢迎加入卓越！' COMMENT '个性签名',
  `create_id` int(11) DEFAULT NULL COMMENT '创建人id',
  `company` varchar(50) DEFAULT NULL COMMENT '学员所在公司',
  `job` varchar(50) DEFAULT NULL COMMENT '学员职位',
  `email` varchar(32) DEFAULT NULL COMMENT '电子邮箱',
  `group_id` int(11) DEFAULT NULL COMMENT '分组id',
  `modify_time` datetime DEFAULT NULL COMMENT '最近一次修改时间',
  `study_length` varchar(30) DEFAULT '0' COMMENT '学员学习时长',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `status` int(1) DEFAULT NULL COMMENT '学员账号状态:1表示开启 ，0表示禁用',
  `wc_open_id` varchar(32) DEFAULT NULL COMMENT '第三方登录微信的openid',
  `device_code` varchar(32) DEFAULT NULL COMMENT '第三方设备号',
  `push_flag` int(1) DEFAULT NULL COMMENT '是否推送消息',
  `qq_open_id` varchar(32) DEFAULT NULL COMMENT '第三方登陆qq的openid',
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学员基本信息';

CREATE TABLE `z_student_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `student_id` int(11) NOT NULL COMMENT '学员id',
  `course_id` int(11) NOT NULL COMMENT '课程id',
  `source_flag` int(1) NOT NULL COMMENT '课程来源(0代表收费,1代表免费)',
  `create_time` datetime DEFAULT NULL COMMENT '我的课程创建时间',
  `course_schedule` varchar(50) DEFAULT NULL COMMENT '进度（集数的字符串<1,2,3....>）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学员课程中间表(我的课程)';

CREATE TABLE `z_sys_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `context` varchar(200) DEFAULT NULL COMMENT '消息内容',
  `receive_id` int(11) NOT NULL COMMENT '接收人',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `see_flag` int(1) DEFAULT '0' COMMENT '是否查看(0未读,1已读)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统消息';

CREATE TABLE `z_sys_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `para_key` varchar(20) DEFAULT NULL COMMENT '标志（xxx代表奖励规则  xxx代表系统头像）',
  `description` varchar(50) DEFAULT NULL COMMENT '参数的说明',
  `para_value` varchar(50) DEFAULT NULL COMMENT '参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统参数表（奖励原则 系统头像 首页标题相关）';

CREATE TABLE `z_teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '讲师基本信息主键id',
  `teacher_code` varchar(32) NOT NULL COMMENT '讲师编号',
  `nick_name` varchar(30) NOT NULL COMMENT '讲师昵称',
  `password` varchar(32) NOT NULL COMMENT '讲师登录密码',
  `img_url` varchar(50) DEFAULT NULL COMMENT '头像地址',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `gender` int(1) DEFAULT NULL COMMENT '性别:男（0）女（1）',
  `user_type` varchar(32) DEFAULT '1' COMMENT '用户类型',
  `email` varchar(32) DEFAULT NULL COMMENT '电子邮箱',
  `status` int(1) DEFAULT NULL COMMENT '讲师账号状态',
  `assist_count` int(15) DEFAULT '0' COMMENT '学员点赞的数量',
  `pv_count` int(10) DEFAULT '0' COMMENT '该讲师的浏览量',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT NULL COMMENT '创建人id',
  `modify_time` datetime DEFAULT NULL COMMENT '最近一次修改时间',
  `teacher_tag` varchar(50) DEFAULT NULL COMMENT '讲师对应的热门标签',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `name` varchar(50) DEFAULT NULL COMMENT '讲师的称号',
  `extend` varchar(32) DEFAULT NULL COMMENT '备用扩展',
  `extend1` varchar(32) DEFAULT NULL COMMENT '备用扩展',
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='讲师、导师基本信息';

CREATE TABLE `z_teacher_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `student_id` int(11) NOT NULL COMMENT '学员id',
  `teacher_id` int(11) NOT NULL COMMENT '讲师id',
  `collection_time` datetime NOT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='讲师收藏表';

CREATE TABLE `z_user_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '群组名称',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户群组表';

CREATE TABLE `z_video` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '视频主键',
  `video_name` varchar(50) DEFAULT NULL COMMENT '视频名称',
  `dir_name` varchar(50) DEFAULT NULL COMMENT '目录名称',
  `total_time` varchar(10) DEFAULT NULL COMMENT '该视频总共时长',
  `course_id` int(11) NOT NULL COMMENT '课程id',
  `video_url` varchar(500) DEFAULT NULL COMMENT '视频路径',
  `free_time` varchar(10) DEFAULT NULL COMMENT '免费播放时间',
  `free_url` varchar(255) DEFAULT NULL COMMENT '免费播放视频url',
  `upload_time` datetime DEFAULT NULL COMMENT '视频上传时间',
  `hold1` varchar(32) DEFAULT NULL COMMENT '预留字段1',
  `hold2` varchar(32) DEFAULT NULL COMMENT '预留字段2',
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='视频';

CREATE TABLE `z_video_playtime` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `student_id` int(11) NOT NULL COMMENT '学员id',
  `video_id` varchar(20) NOT NULL COMMENT '视频id',
  `palyed_time` int(11) DEFAULT NULL COMMENT '记录已经播放到的时间(毫秒值)',
  `last_play_time` datetime DEFAULT NULL COMMENT '学员上次播放的时间',
  `type` varchar(15) DEFAULT NULL COMMENT '播放视频的设备类型（Android，iPhone.....）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录学员播放视频的时间';

