drop table if exists ANT_PLAN_OUT;

/*==============================================================*/
/* Table: ANT_PLAN_OUT                                          */
/*==============================================================*/
create table ANT_PLAN_OUT
(
   ID                   bigint not null auto_increment comment '主键',
   PLAN_CODE            varchar(50) comment '方案编码',
   CATEGORY             integer comment '产品类型 多个以逗号分隔 1-跟团游 2-自由行 3-海岛游 4-邮轮 5-目的地游 6-单订票 7-单订房 8-落地散拼',
   TIP                  integer comment '能否离团 0(true)-能 1(false)-否',
   TAG                  varchar(1000) comment '主题标签多个以逗号分隔',
   SUB_TITLE            varchar(200) comment '产品名称-副标题',
   TITLE                varchar(500) comment '产品名称-主标题',
   DEPART_CITY          varchar(1000) comment '出发城市 0-不限 多个以逗号分隔',
   GEO_TAG              varchar(1000) comment '地理标签 多个以逗号分隔',
   ARRIVE               varchar(500) comment '抵达-文字',
   LIMIT_AGE_GT         integer comment '人群限制-出游人年龄 0(false)-否 1(true)-是',
   LIMIT_AGE_GT_70      integer comment '人群限制-年龄超过70-年龄',
   LIMIT_AGE_GT_70_A1   integer comment '人群限制-年龄超过70-建议1 1-建议 2-必须',
   LIMIT_AGE_GT_70_A2   integer comment '人群限制-年龄超过70-建议2 1-建议 2-必须',
   LIMIT_AGE_GT_75      integer comment '人群限制-年龄超过75',
   LIMIT_AGE_GT_80      integer comment '人群限制-年龄超过80',
   LIMIT_AGE_GT_80_A1   integer comment '人群限制-年龄超过80-建议1 1-请尽量不要参加本次旅游 2-不接受参团',
   LIMIT_AGE_LT_A_18    integer comment '人群限制-年龄低于18岁 A  0(false)-否 1(true)-是',
   LIMIT_AGE_LT_A_NUM   integer comment '人群限制-年龄低于18岁A条件',
   LIMIT_AGE_LT_B_18    integer comment '人群限制-年龄低于B岁 B',
   LIMIT_AGE_LT_B_NUM   integer comment '人群限制-年龄低于18岁B条件',
   LIMIT_AGE_BT         integer comment '人群限制-出境游年龄',
   LIMIT_AGE_BT_FROM    integer comment '人群限制-出境游年龄-从',
   LIMIT_AGE_BT_TO      integer comment '人群限制-出境游年龄-到',
   LIMIT_FOREIGN        integer comment '人群限制-是否禁止外籍游客 0-否 1-是',
   LIMIT_COUNT_LT       integer comment '人群限制-人数少于',
   LIMIT_COUNT_LT_NUM   integer comment '人群限制-人数少于-人数',
   LIMIT_COUNT_GT       integer comment '人群限制-人数超过',
   LIMIT_COUNT_GT_NUM   integer comment '人群限制-人数超过-人数',
   LIMIT_GEO            integer comment '人群限制-地域限制 0(false)-否 1(true)-是',
   LIMIT_GEO_FLAG       char(10) comment '人群限制-地域限制-户籍是或非 1-是 2-非',
   LIMIT_GEO_OPTION     varchar(500) comment '人群限制-地域限制选项 多个以逗号分隔',
   CRET_REQUIRE         integer comment '证件要求 1-护照 2-港澳通行证 3-台湾通行证',
   CRET_DESC            varchar(500) comment '证件说明',
   TITLE_IMG            varchar(500) comment '标题图片',
   TITLE_VIDEO          varchar(500) comment '标题视频',
   DESTINATION_NOTICE   text comment '目的地须知',
   ORDER_NOTICE         text comment '预定须知',
   TRAVEL_NOTICE        text comment '旅游须知',
   RISK_NOTICE          text comment '风险安全告知',
   REL_OP               text comment '关联计调 JSON',
   POST_SALE            text comment '售后投诉',
   EMG_CONTACT          text comment '紧急联系人',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_OUT comment '出境游表';
