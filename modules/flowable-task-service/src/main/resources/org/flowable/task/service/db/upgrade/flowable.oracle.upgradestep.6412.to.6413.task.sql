create table ACT_HI_TSK_LOG (
  ID_              NUMBER(19),
  TYPE_                NVARCHAR2(64),
  TASK_ID_             NVARCHAR2(64) not null,
  TIME_STAMP_          TIMESTAMP(6) not null,
  USER_ID_             NVARCHAR2(255),
  DATA_                NVARCHAR2(4000),
  EXECUTION_ID_        NVARCHAR2(64),
  PROC_INST_ID_        NVARCHAR2(64),
  PROC_DEF_ID_         NVARCHAR2(64),
  SCOPE_ID_            NVARCHAR2(255),
  SCOPE_DEFINITION_ID_ NVARCHAR2(255),
  SUB_SCOPE_ID_        NVARCHAR2(255),
  SCOPE_TYPE_          NVARCHAR2(255),
  TENANT_ID_           NVARCHAR2(255) default ''
);

create sequence flw_task_evt_log_seq;

create index ACT_IDX_HI_TASK_LOG_NUMBER on ACT_HI_TSK_LOG(ID_);

update ACT_GE_PROPERTY set VALUE_ = '6.4.1.3' where NAME_ = 'task.schema.version';
