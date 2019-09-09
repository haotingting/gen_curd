drop table if exists ANT_PERMISSION_MENU;

/*==============================================================*/
/* Table: ANT_PERMISSION_MENU                                   */
/*==============================================================*/
create table ANT_PERMISSION_MENU
(
   ID                   bigint not null auto_increment comment '主键',
   MENU_CODE            varchar(100) comment '菜单编码',
   MENU_NAME            varchar(500) comment '菜单名称',
   MENU_ORDER           integer comment '菜单排序',
   MENU_PARENT          varchar(100) comment '上级菜单',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PERMISSION_MENU comment '用户权限菜单';
