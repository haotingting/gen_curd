drop table if exists ANT_GEO_TAG;

/*==============================================================*/
/* Table: ANT_GEO_TAG                                           */
/*==============================================================*/
create table ANT_GEO_TAG
(
   ID                   bigint not null auto_increment comment '主键',
   TAG_CODE             varchar(50) comment '标签编码',
   TAG_NAME             varchar(100) comment '标签名称',
   TAG_SHORT_CODE       varchar(50) comment '标签代号',
   TAG_PID              varchar(500) comment '上级ID',
   TAG_ORDER            integer comment '排序码',
   IS_PRIORITY          integer comment '是否优先 0-否 1-是',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_GEO_TAG comment '地理标签';
