drop table if exists ANT_PLAN_OUT_EDITION_SHUTTLE;

/*==============================================================*/
/* Table: ANT_PLAN_OUT_EDITION_SHUTTLE                          */
/*==============================================================*/
create table ANT_PLAN_OUT_EDITION_SHUTTLE
(
   ID                   bigint not null auto_increment comment '主键',
   SHUTTLE_CODE         varchar(50) comment '接送编码',
   EDITION_CODE         varchar(50) comment '售价组编码',
   SHUTTLE_TYPE         integer comment '接送类型 1-单程 2-往返',
   GO_TYPE              integer comment '去程类型 1-网约车，下单自定义时间 2-第1天 3-提前1天',
   GO_HOUR              integer comment '去程小时',
   GO_MINUTE            integer comment '去程分钟',
   GO_DEPART_CITY       varchar(500) comment '去程出发城市',
   GO_DEPART_ADDRESS    varchar(500) comment '去程出发地址',
   GO_ARRIVE_CITY       varchar(500) comment '去程抵达城市',
   GO_ARRIVE_ADDRESS    varchar(500) comment '去程抵达地址',
   GO_TIME              varchar(50) comment '去程时间',
   BACK_TYPE            integer comment '返程类型 1-网约车 2-最后1天 3-延后1天',
   BACK_HOUR            integer comment '返程小时',
   BACK_MINUTE          integer comment '返程分钟',
   BACK_DEPART_CITY     varchar(500) comment '返程出发城市',
   BACK_DEPART_ADDRESS  varchar(500) comment '返程出发地址',
   BACK_ARRIVE_CITY     varchar(500) comment '返程抵达城市',
   BACK_ARRIVE_ADDRESS  varchar(500) comment '返程抵达地址',
   BACK_TIME            varchar(50) comment '返程时间',
   CHARGE_TYPE          integer comment '收费类型 1-单人 2-整车',
   CHARGE_AMOUNT        decimal(15,2) comment '收费金额',
   BUS_INFO             varchar(500) comment '车型',
   OTHER_INFO           varchar(500) comment '其它说明',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_OUT_EDITION_SHUTTLE comment '出境游班期售价组接送表';
