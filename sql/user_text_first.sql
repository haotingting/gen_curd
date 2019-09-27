drop table if exists ANT_USER_TEXT_FIRST;

/*==============================================================*/
/* Table: ANT_USER_TEXT_FIRST                                   */
/*==============================================================*/
create table ANT_USER_TEXT_FIRST
(
   ID                   bigint not null auto_increment comment '主键',
   CONTENT_CODE         varchar(50) comment '内容编码',
   USER_CODE            varchar(50) comment '用户编码',
   FIRST_ORDER          integer comment '排序',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_USER_TEXT_FIRST comment '我的常用库-优先文本表';
