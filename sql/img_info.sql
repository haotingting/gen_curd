drop table if exists ANT_IMG_INFO;

/*==============================================================*/
/* Table: ANT_IMG_INFO                                          */
/*==============================================================*/
create table ANT_IMG_INFO
(
   ID                   bigint not null auto_increment comment '主键',
   IMG_CODE             varchar(50) comment '图片编码',
   IMG_FORMAT           integer comment '文件格式 1-图片2-视频',
   CATEGORY             varchar(500) comment '分类编码',
   TITLE                varchar(500) comment '标题',
   GEO_TAG              text comment '地理标签',
   URL                  varchar(1000) comment '图片地址',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_IMG_INFO comment '图库表';
