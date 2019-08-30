drop table if exists ANT_PLAN_OUT_SCHEDULE_PAY;

/*==============================================================*/
/* Table: ANT_PLAN_OUT_SCHEDULE_PAY                             */
/*==============================================================*/
create table ANT_PLAN_OUT_SCHEDULE_PAY
(
   ID                   bigint not null auto_increment comment '主键',
   PAY_CODE             varchar(50) comment '余款编码',
   SCHEDULE_CODE        varchar(50) comment '班期编码',
   PAYMENT_WAY          integer comment '余款支付-前后 1-前 2-后',
   PAYMENT_DAY          integer comment '余款支付-天',
   PAYMENT_PERCENT      decimal(15,2) comment '余款支付-百分比',
   PAYMENT_ORDER        integer comment '余款支付顺序',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_OUT_SCHEDULE_PAY comment '出境游班期余款表';
