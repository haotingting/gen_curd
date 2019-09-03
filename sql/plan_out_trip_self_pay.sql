drop table if exists ANT_PLAN_OUT_TRIP_SELF_PAY;

/*==============================================================*/
/* Table: ANT_PLAN_OUT_TRIP_SELF_PAY                            */
/*==============================================================*/
create table ANT_PLAN_OUT_TRIP_SELF_PAY
(
   ID                   bigint not null auto_increment comment '主键',
   PAY_CODE             varchar(50) comment '自费编码',
   TRIP_CODE            varchar(50) comment '行程编码',
   DAY                  integer comment '天数',
   ENTER_TIME           varchar(50) comment '开始时间',
   PLACE                varchar(200) comment '项目地点',
   ITEM_NAME            varchar(1000) comment '项目名称和内容',
   COST                 decimal(15,2) comment '费用',
   CURRENCY             varchar(50) comment '币种',
   MINUTE               integer comment '项目时长-分钟',
   PAY_DESC             text comment '说明',
   PAY_ORDER            integer comment '排序',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_OUT_TRIP_SELF_PAY comment '出境游行程自费表';
