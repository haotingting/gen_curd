drop table if exists ANT_PLAN_OUT_SCHEDULE_EDITION;

/*==============================================================*/
/* Table: ANT_PLAN_OUT_SCHEDULE_EDITION                         */
/*==============================================================*/
create table ANT_PLAN_OUT_SCHEDULE_EDITION
(
   ID                   bigint not null auto_increment comment '主键',
   EDITION_CODE         varchar(50) comment '售价组编码',
   SCHEDULE_CODE        varchar(50) comment '班期编码',
   EDITION_NAME         varchar(500) comment '售价组名称',
   EDITION_ORDER        integer comment '优先售价组',
   EDITION_UNIT         integer comment '售价组单位 1-单人 9-其他单位',
   EDITION_UNIT_NAME    varchar(100) comment '售价组单位名称',
   EDITION_STATUS       integer comment '售价组状态 0-关闭 1-激活 2-彻底删除',
   SALES_PLAN           integer comment '促销活动 1-无 2-早鸟计划 3-大促 4-尾单',
   SALES_BEGIN_DAY      integer comment '促销时间-自-天',
   SALES_BEGIN_HOUR     integer comment '促销时间-自-小时',
   SALES_END_DAY        integer comment '促销时间-至-天',
   SALES_END_HOUR       integer comment '促销时间-至-小时',
   SALES_TIMEOUT        integer comment '促销逾时 1-班期下线 2-本售价组关闭',
   GIFT                 text comment '旅游赠品',
   BONUS_POINTS         text comment '积分活动',
   BANK_ACTIVITY        text comment '银行活动',
   ORDER_END_DAY        integer comment '预定截止-天',
   ORDER_END_TIME       varchar(50) comment '预定截止-时间',
   NAME_LIST_END_DAY    integer comment '名单截止-天',
   NAME_LIST_NOTIFY_SALE integer comment '名单截止-通知-订单销售员 0(false)-否 1(true)-是',
   NAME_LIST_NOTIFY_ASSISTANT integer comment '名单截止-通知-订单销售助手  0(false)-否 1(true)-是',
   NAME_LIST_NOTIFY_CUSTOM integer comment '名单截止-通知-客户联系人   0(false)-否 1(true)-是',
   NAME_LIST_NOTIFY_TOURIST integer comment '名单截止-通知-游客联系人    0(false)-否 1(true)-是',
   VISA_END_DAY         integer comment '送签截止-天',
   VISA_END_NOTIFY_SALE integer comment '送签截止-通知-订单销售员  0(false)-否 1(true)-是',
   VISA_END_NOTIFY_ASSISTANT integer comment '送签截止-通知-订单销售助手  0(false)-否 1(true)-是',
   VISA_END_NOTIFY_CUSTOM integer comment '送签截止-通知-客户联系人  0(false)-否 1(true)-是',
   VISA_END_NOTIFY_TOURIST integer comment '送签截止-通知-游客联系人   0(false)-否 1(true)-是',
   TOURIST_DISCOUNT     text comment '游客优惠(仅限直客)',
   SALES_TIPS           text comment '销售提示(代理提示)',
   INTERNAL_REMARK      text comment '内部批注(政策底价)',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_OUT_SCHEDULE_EDITION comment '出境游班期售价组表';
