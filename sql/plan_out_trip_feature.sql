drop table if exists ANT_PLAN_OUT_TRIP_FEATURE;

/*==============================================================*/
/* Table: ANT_PLAN_OUT_TRIP_FEATURE                             */
/*==============================================================*/
create table ANT_PLAN_OUT_TRIP_FEATURE
(
   ID                   bigint not null auto_increment comment '主键',
   FEATURE_CODE         varchar(50) comment '特点编码',
   TRIP_CODE            varchar(50) comment '行程编码',
   TITLE                varchar(500) comment '特点标题',
   CONTENT              text comment '特点内容',
   FEATURE_ORDER        integer comment '特点排序',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_OUT_TRIP_FEATURE comment '出境游行程特点表';
