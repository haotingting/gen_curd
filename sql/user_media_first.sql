drop table if exists ANT_USER_MEDIA_FIRST;

/*==============================================================*/
/* Table: ANT_USER_MEDIA_FIRST                                  */
/*==============================================================*/
create table ANT_USER_MEDIA_FIRST
(
   ID                   bigint not null auto_increment comment '主键',
   MEDIA_CODE           varchar(50) comment '媒体编码',
   MEDIA_FORMAT         integer comment '媒体格式 1-图片2-视频',
   USER_CODE            varchar(50) comment '用户编码',
   FIRST_ORDER          integer comment '排序',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_USER_MEDIA_FIRST comment '我的常用库-优先媒体表';
