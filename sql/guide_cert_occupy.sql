drop table if exists ANT_GUIDE_CERT_OCCUPY;

/*==============================================================*/
/* Table: ANT_GUIDE_CERT_OCCUPY                                 */
/*==============================================================*/
create table ANT_GUIDE_CERT_OCCUPY
(
   ID                   bigint not null auto_increment comment '主键',
   OCCUPY_CODE          varchar(50) comment '占用编码',
   GUIDE_CODE           varchar(50) comment '导领编码',
   CERT_CATEGORY        integer comment '证件类别 1-护照 2-港澳通行证 3-台湾通行证',
   OCCUPY_DATE_FROM     datetime comment '占用时间开始',
   OCCUPY_DATE_TO       datetime comment '占用时间结束',
   OCCUPY_REASON        text comment '占用说明',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_GUIDE_CERT_OCCUPY comment '导领证件占用表';
