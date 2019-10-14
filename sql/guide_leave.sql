drop table if exists ANT_GUIDE_LEAVE;

/*==============================================================*/
/* Table: ANT_GUIDE_LEAVE                                       */
/*==============================================================*/
create table ANT_GUIDE_LEAVE
(
   ID                   bigint not null auto_increment comment '主键',
   LEAVE_CODE           varchar(50) comment '假期编码',
   GUIDE_CODE           varchar(50) comment '导领编码',
   CATEGORY             integer comment '类别 1-病假 2-事假 3-年假 4-调休 5-产假 6-婚假 7-丧假 9-其他',
   LEAVE_TIME_FROM      datetime comment '请假时间开始',
   LEAVE_TIME_TO        datetime comment '请假时间结束',
   LEAVE_REASON         text comment '请假事由',
   CHECK_ID             varchar(50) comment '审核人',
   CHECK_TIME           datetime comment '审核时间',
   CHECK_STATUS         integer comment '审核状态 0-未审 1-待审 2-已审 3-拒审',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_GUIDE_LEAVE comment '导领请假表';
