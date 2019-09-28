drop table if exists ANT_SCENIC;

/*==============================================================*/
/* Table: ANT_SCENIC                                            */
/*==============================================================*/
create table ANT_SCENIC
(
   ID                   bigint not null auto_increment comment '主键',
   SCENIC_CODE          varchar(50) comment '景点编码',
   CATEGORY             integer comment '类别 1-景点 2-购物 3-餐饮 4-交通 5-酒店 6-航班 7-休息 8-自由活动 99-其他',
   GEO_TAG              varchar(50) comment '地理标签',
   ADDRESS              varchar(1000) comment '地址',
   NAME                 varchar(1000) comment '名称',
   CONTENT              text comment '描述',
   STAY_TIME            varchar(1000) comment '停留时间',
   VERSION              varchar(1000) comment '版本名称',
   MEDIA                text comment '媒体',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_SCENIC comment '景点库';
