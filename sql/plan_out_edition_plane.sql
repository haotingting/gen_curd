drop table if exists ANT_PLAN_OUT_EDITION_PLANE;

/*==============================================================*/
/* Table: ANT_PLAN_OUT_EDITION_PLANE                            */
/*==============================================================*/
create table ANT_PLAN_OUT_EDITION_PLANE
(
   ID                   bigint not null auto_increment comment '主键',
   PLANE_CODE           varchar(50) comment '航班编码',
   EDITION_CODE         varchar(50) comment '售价组编码',
   PLANE_DAY            integer comment '航班日期',
   PLANE_TYPE           integer comment '航班类型 1-直飞 2-经停 3-中转',
   DEPART_CITY          varchar(500) comment '起飞城市',
   DEPART_AIRPORT       varchar(500) comment '起飞机场',
   ARRIVE_CITY          varchar(500) comment '抵达城市',
   ARRIVE_AIRPORT       varchar(500) comment '抵达机场',
   DEPART_HOUR          integer comment '起飞小时',
   DEPART_MINUTE        integer comment '起飞分钟',
   ARRIVE_HOUR          integer comment '抵达小时',
   ARRIVE_MINUTE        integer comment '抵达分钟',
   PLANE_SPAN           integer comment '是否跨天 0(false)-否 1(true)-是',
   FLIGHT_TIME_HOUR     integer comment '飞行时间-小时',
   FLIGHT_TIME_MINUTE   integer comment '飞行时间-分钟',
   CABIN_TYPE           integer comment '舱位类型 1-经济舱 2-特等经济舱 3-公务舱 4-头等舱',
   FREE_LUGGAGE         varchar(500) comment '免费托运',
   FLIGHT_MEALS         varchar(500) comment '航空餐',
   OTHER_REMARK         varchar(500) comment '其它说明',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_OUT_EDITION_PLANE comment '出境游班期售价组航班表';
