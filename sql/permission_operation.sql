drop table if exists ANT_PERMISSION_OPERATION;

/*==============================================================*/
/* Table: ANT_PERMISSION_OPERATION                              */
/*==============================================================*/
create table ANT_PERMISSION_OPERATION
(
   ID                   bigint not null auto_increment comment '主键',
   OPERATION_CODE       varchar(100) comment '操作编码',
   OPERATION_NAME       varchar(500) comment '操作名称',
   OPERATION_ORDER      integer comment '操作排序',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PERMISSION_OPERATION comment '用户权限操作';
