drop table if exists ANT_PLAN_TEAM;

/*==============================================================*/
/* Table: ANT_PLAN_TEAM                                         */
/*==============================================================*/
create table ANT_PLAN_TEAM
(
   ID                   bigint not null auto_increment comment '主键',
   TEAM_CODE            varchar(50) comment '团组编码',
   CATEGORY             integer comment '团组类型 1-计划团组 2-整单团组3-过账团组',
   PLAN_CODE            varchar(50) comment '产品编码',
   TRIP_CODE            varchar(50) comment '行程编码',
   SCHEDULE_CODE        varchar(50) comment '班期编码',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_TEAM comment '团组表';
