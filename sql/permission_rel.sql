drop table if exists ANT_PERMISSION_REL;

/*==============================================================*/
/* Table: ANT_PERMISSION_REL                                    */
/*==============================================================*/
create table ANT_PERMISSION_REL
(
   ID                   bigint not null auto_increment comment '主键',
   ROLE_CODE            varchar(100) comment '角色编码',
   MENU_CODE            varchar(100) comment '菜单编码',
   FUNCTION_INFO        text comment '功能内容',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PERMISSION_REL comment '用户权限角色关系';
