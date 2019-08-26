drop table if exists ANT_PLAN_OUT_TRIP;

/*==============================================================*/
/* Table: ANT_PLAN_OUT_TRIP                                     */
/*==============================================================*/
create table ANT_PLAN_OUT_TRIP
(
   ID                   bigint not null auto_increment comment '主键',
   TRIP_CODE            varchar(50) comment '行程编码',
   PLAN_CODE            varchar(50) comment '方案编码',
   TRIP_NAME            varchar(500) comment '行程名称',
   TRIP_DISPLAY         integer comment '行程显示0(false)-否 1(true)-否',
   TRIP_DISPLAY_NAME    varchar(200) comment '行程显示名称',
   TRIP_STATUS          integer comment '行程状态 0-停用 1-正常 2-删除',
   TRIP_ID              varchar(50) comment '产品ID',
   DAYS                 integer comment '行程天数',
   TRIP_LEN             integer comment '长线短线 1-长线 2-短线',
   NIGHTS               integer comment '酒店晚数',
   UPDATE_ID            varchar(50) comment '更新人',
   UPDATE_TIME          datetime comment '更新日期',
   CHECK_ID             varchar(50) comment '审核人',
   CHECK_TIME           datetime comment '审核时间',
   TRIP_ATTACH          text comment '行程附件',
   EMG_CONTACT          varchar(500) comment '紧急联系人',
   SHOPPING_ADDITIONAL  text comment '购物说明-补充说明',
   VISA_DESC_DISCLAIMER text comment '签证说明-免责说明',
   SELF_PAY_ADDITIONAL  text comment '自费项目-补充说明',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_OUT_TRIP comment '出境游行程表';
