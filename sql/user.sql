drop table if exists ANT_USER;

/*==============================================================*/
/* Table: ANT_USER                                              */
/*==============================================================*/
create table ANT_USER
(
   ID                   bigint not null auto_increment comment '主键',
   USER_CODE            varchar(50) comment '用户编码',
   USER_NAME            varchar(100) comment '用户账号',
   DEPT                 varchar(50) comment '所在部门',
   EMPLOYEE             varchar(50) comment '员工',
   USER_ORDER           integer comment '排序',
   DISABLED             integer comment '是否停用 0-否 1-是',
   DATA_ROLE            varchar(500) comment '数据权限角色 多个以,(逗号)分隔',
   FUNC_ROLE            varchar(500) comment '功能权限角色 多个以,(逗号)分隔',
   OFFLINE_PRODUCT_1    integer comment '产品未审不可上线  0-否 1-是',
   OFFLINE_PRODUCT_2    integer comment '产品审拒不可上线  0-否 1-是',
   OFFLINE_PRODUCT_3    integer comment '产品修改待审不可上线 0-否 1-是',
   OFFLINE_SCHEDULE_1   integer comment '班期未审不可上线 0-否 1-是',
   OFFLINE_SCHEDULE_2   integer comment '班期审拒不可上线 0-否 1-是',
   OFFLINE_SCHEDULE_3   integer comment '班期修改待审不可上线 0-否 1-是',
   OP_POLICY            varchar(500) comment '计调政策 多个以逗号分隔',
   SALES_POLICY         varchar(500) comment '销售政策 多个以逗号分隔',
   IS_HEAD              integer comment '是否是主管 0(false)-否 1(true)-是',
   REMARK               varchar(1000) comment '备注',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_USER comment '企业用户表';
