drop table if exists ANT_GEO_DEPART;

/*==============================================================*/
/* Table: ANT_GEO_DEPART                                        */
/*==============================================================*/
create table ANT_GEO_DEPART
(
   ID                   bigint not null auto_increment comment '主键',
   DEPART_CODE          varchar(50) comment '优先编码',
   DEPART_ORDER         integer comment '排序码',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_GEO_DEPART comment '优先出发城市';
