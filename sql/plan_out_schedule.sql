drop table if exists ANT_PLAN_OUT_SCHEDULE;

/*==============================================================*/
/* Table: ANT_PLAN_OUT_SCHEDULE                                 */
/*==============================================================*/
create table ANT_PLAN_OUT_SCHEDULE
(
   ID                   bigint not null auto_increment comment '主键',
   SCHEDULE_CODE        varchar(50) comment '班期编码',
   TRIP_CODE            varchar(50) comment '行程编码',
   MIN_PERSONS          integer comment '最低成团人数',
   POST_IMG             text comment '海报图片',
   HOLD_OP              varchar(50) comment '控位计调',
   GUIDE_FEE            decimal(15,2) comment '导游服务费',
   IMPORTANT_NOTICE     text comment '重点提醒 JSON',
   DEPART_DATE          datetime comment '出发日期',
   TOUR_NUMBER          varchar(100) comment '团号',
   PURCHASE_QUOTA       integer comment '总采购名额',
   HOLD_QUOTA           integer comment '总控(可售名额)',
   HOLD_ROOM            integer comment '总控(可售用房)',
   DRIVER_ROOM          integer comment '司陪房数量',
   DRIVER_REMARK        varchar(500) comment '司陪房内注',
   LEADER_ROOM_NUM      integer comment '领队(占位)',
   LEADER_ROOM_SERVICE  varchar(500) comment '领队(占位)-服务',
   LEADER_NO_ROOM_NUM   integer comment '领队(不占位)',
   LEADER_NO_ROOM_SERVICE varchar(500) comment '领队(不占位)-服务',
   LEADER_NO_ROOM_REMARK varchar(500) comment '领队(不占位)-内注',
   FOLLOWER_ROOM_NUM    integer comment '跟团(占位)',
   FOLLOWER_ROOM_SERVICE varchar(500) comment '跟团(占位)-服务',
   FOLLOWER_NO_ROOM_NUM integer comment '跟团(不占位)',
   FOLLOWER_NO_ROOM_SERVICE varchar(500) comment '跟团(不占位)-服务',
   FOLLOWER_NO_ROOM_REMARK varchar(500) comment '跟团(不占位)-内注',
   BYE_NUM              integer comment '送团工作人员',
   BYE_SERVICE          varchar(500) comment '送团工作人员-服务',
   WELCOME_NUM          integer comment '接团工作人员',
   WELCOME_SERVICE      varchar(500) comment '接团工作人员-服务',
   ORDER_CONFIRMATION   integer comment '系统文件-订单确认件(游客) 0(false)-否 1(true)-是',
   TRADE_CONFIRMATION   integer comment '系统文件-同业确认件) 0(false)-否 1(true)-是',
   AGREEMENT            integer comment '系统文件-合同) 0(false)-否 1(true)-是',
   ORDER_HOLD_WAY       integer comment '订单占位 1-审核占位 2-自动占位',
   ORDER_AGREEMENT_TYPE integer comment '订单合同 1-跟团游合同 2-自由行合同 3-供应商合同 4-疗休养合同',
   BROWSE_INNER         integer comment '浏览权限-我司内网  0(false)-否 1(true)-是',
   BROWSE_DISTRIBUTION  integer comment '浏览权限-分销账号  0(false)-否 1(true)-是',
   BROWSE_LINK          integer comment '浏览权限-分销链接   0(false)-否 1(true)-是',
   BROWSE_OFFICIAL      integer comment '浏览权限-官网   0(false)-否 1(true)-是',
   BROWSE_MOBILE        integer comment '浏览权限-手机站   0(false)-否 1(true)-是',
   TRAVEL_NOTIFICATION  integer comment '出团通知书 1-系统版 2-人工版',
   TRAVEL_NOTIFICATION_URL varchar(1000) comment '出团通知书-链接',
   PURCHASE_TYPE        integer comment '采购类型 1-订单采购 2-计划采购 3-链接切位',
   PURCHASE_TYPE_WAY    integer comment '采购类型-方式 1-定金 2-全损 3-无损',
   ASSEMBLE_MODE        integer comment '拼团约定 1-我司自组 2-拼团他司',
   ASSEMBLE_OTHER_NAME  varchar(500) comment '他司名称',
   PRODUCT_SOURCE       integer comment '产品来源 1-交供应商 2-直采研发 9-其他',
   ITEM_TYPE            varchar(50) comment '项目类型',
   CREDIT_LIMIT_FLAG    integer comment '欠款额度 0-否 1-是',
   DEPOSIT_WAY          integer comment '订金计算-方式 1-比例 2-金额',
   DEPOSIT_PERCENT      decimal(15,2) comment '订金计算-比例',
   DEPOSIT_AMOUNT       decimal(15,2) comment '订金计算-金额',
   DEPOSIT_TIME_NUM     decimal(15,2) comment '订金支付-数字',
   DEPOSIT_TIME_UNIT    integer comment '订金支付-时间单位 1-分钟 2-天',
   CANCEL_COST_PLANE    integer comment '取消损失-属于包机或切位产品   0(false)-否 1(true)-是',
   CANCEL_COST_ROOM     integer comment '取消损失-属于包房销售产品    0(false)-否 1(true)-是',
   CANCEL_COST_A_DAY    integer comment '取消损失-A-天数',
   CANCEL_COST_A_TYPE   integer comment '取消损失-A-天数-类型 1-百分比 2-金额',
   CANCEL_COST_A_PERCENT decimal(15,2) comment '取消损失-A-天数-百分比',
   CANCEL_COST_A_AMOUNT decimal(15,2) comment '取消损失-A-天数-金额',
   CANCEL_COST_B_DAY_FROM integer comment '取消损失-B-天数-开始',
   CANCEL_COST_B_DAY_TO integer comment '取消损失-B-天数-结束',
   CANCEL_COST_B_PERCENT decimal(15,2) comment '取消损失-B-天数-百分比',
   CANCEL_COST_C_DAY    integer comment '取消损失-C-天数',
   CANCEL_COST_C_PERCENT decimal(15,2) comment '取消损失-C-天数-百分比',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_OUT_SCHEDULE comment '出境游班期表';
