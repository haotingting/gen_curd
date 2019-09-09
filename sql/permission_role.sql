drop table if exists ANT_PERMISSION_ROLE;

/*==============================================================*/
/* Table: ANT_PERMISSION_ROLE                                   */
/*==============================================================*/
create table ANT_PERMISSION_ROLE
(
   ID                   bigint not null auto_increment comment '主键',
   ROLE_CODE            varchar(100) comment '角色编码',
   ROLE_NAME            varchar(500) comment '角色名称',
   ROLE_ORDER           integer comment '角色排序',
   ROLE_STATUS          integer comment '角色状态 0-禁用 1-正常',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PERMISSION_ROLE comment '用户权限角色';
