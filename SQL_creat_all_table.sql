
CREATE TABLE CODE_BLACK_REASON (
  BLACK_REASON_CODE    VARCHAR2(10)     NOT NULL, 
  BLACK_REASON_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( BLACK_REASON_CODE ), 
    UNIQUE ( BLACK_REASON_NAME )
);

CREATE TABLE CODE_COOPERATOR_NAME (
  COOPERATOR_NAME_CODE    VARCHAR2(10)     NOT NULL, 
  COOPERATOR_NAME         VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( COOPERATOR_NAME_CODE ), 
    UNIQUE ( COOPERATOR_NAME )
);

CREATE TABLE CODE_DBMS (
  DBMS_CODE    VARCHAR2(10)     NOT NULL, 
  DBMS_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( DBMS_CODE ), 
    UNIQUE ( DBMS_NAME )
);

CREATE TABLE CODE_DEP (
  DEP_CODE    VARCHAR2(10)     NOT NULL, 
  DEP_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( DEP_CODE ), 
    UNIQUE ( DEP_NAME )
);

CREATE TABLE CODE_DISPATCH_LEVEL (
  DISPATCH_LEVEL_CODE    VARCHAR2(10)     NOT NULL, 
  DISPATCH_LEVEL_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( DISPATCH_LEVEL_CODE ), 
    UNIQUE ( DISPATCH_LEVEL_NAME )
);

CREATE TABLE CODE_DISPATCH_ROLE (
  DISPATCH_ROLE_CODE    VARCHAR2(10)     NOT NULL, 
  DISPATCH_ROLE_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( DISPATCH_ROLE_CODE ), 
    UNIQUE ( DISPATCH_ROLE_NAME )
);

CREATE TABLE CODE_DOCUMENT_TYPE (
  DOCUMENT_TYPE_CODE            VARCHAR2(10)       NOT NULL, 
  DOCUMENT_TYPE_NAME            VARCHAR2(200)          NULL, 
  DOCUMENT_TYPE_FORM_CONTENT    VARCHAR2(4000)         NULL, 
  DOCUMENT_TYPE_FORM_TITLE      VARCHAR2(200)          NULL, 
    PRIMARY KEY ( DOCUMENT_TYPE_CODE ), 
    UNIQUE ( DOCUMENT_TYPE_NAME )
);

CREATE TABLE CODE_DUTY (
  DUTY_CODE    VARCHAR2(10)     NOT NULL, 
  DUTY_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( DUTY_CODE ), 
    UNIQUE ( DUTY_NAME )
);

CREATE TABLE CODE_FAVORITE_PART (
  FAVORITE_PART_CODE    VARCHAR2(10)     NOT NULL, 
  FAVORITE_PART_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( FAVORITE_PART_CODE ), 
    UNIQUE ( FAVORITE_PART_NAME )
);

CREATE TABLE CODE_FOREIGN_LANGUAGE (
  FOREIGN_LANGUAGE_CODE    VARCHAR2(10)     NOT NULL, 
  FOREIGN_LANGUAGE_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( FOREIGN_LANGUAGE_CODE ), 
    UNIQUE ( FOREIGN_LANGUAGE_NAME )
);

CREATE TABLE CODE_GO_ARMY (
  GO_ARMY_CODE    VARCHAR2(10)     NOT NULL, 
  GO_ARMY_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( GO_ARMY_CODE ), 
    UNIQUE ( GO_ARMY_NAME )
);

CREATE TABLE CODE_HAKBU (
  HAKBU_CODE    VARCHAR2(10)     NOT NULL, 
  HAKBU_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( HAKBU_CODE ), 
    UNIQUE ( HAKBU_NAME )
);

CREATE TABLE CODE_HIGHESTLEVEL_EDU (
  HIGHESTLEVEL_EDU_CODE    VARCHAR2(10)     NOT NULL, 
  HIGHESTLEVEL_EDU_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( HIGHESTLEVEL_EDU_CODE ), 
    UNIQUE ( HIGHESTLEVEL_EDU_NAME )
);

CREATE TABLE CODE_HIRE_TYPE (
  HIRE_TYPE_CODE    VARCHAR2(10)     NOT NULL, 
  HIRE_TYPE_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( HIRE_TYPE_CODE ), 
    UNIQUE ( HIRE_TYPE_NAME )
);

CREATE TABLE CODE_INTEREST (
  INTEREST_CODE    VARCHAR2(10)     NOT NULL, 
  INTEREST_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( INTEREST_CODE ), 
    UNIQUE ( INTEREST_NAME )
);

CREATE TABLE CODE_IT_LANGUAGE (
  IT_LANGUAGE_CODE    VARCHAR2(10)     NOT NULL, 
  IT_LANGUAGE_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( IT_LANGUAGE_CODE ), 
    UNIQUE ( IT_LANGUAGE_NAME )
);

CREATE TABLE CODE_JOB (
  JOB_CODE    VARCHAR2(10)     NOT NULL, 
  JOB_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( JOB_CODE ), 
    UNIQUE ( JOB_NAME )
);

CREATE TABLE CODE_LICENSE (
  LICENSE_CODE    VARCHAR2(10)     NOT NULL, 
  LICENSE_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( LICENSE_CODE ), 
    UNIQUE ( LICENSE_NAME )
);

CREATE TABLE CODE_LOCATION (
  LOCATION_CODE    VARCHAR2(10)     NOT NULL, 
  LOCATION_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( LOCATION_CODE ), 
    UNIQUE ( LOCATION_NAME )
);

CREATE TABLE CODE_OS (
  OS_CODE    VARCHAR2(10)     NOT NULL, 
  OS_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( OS_CODE ), 
    UNIQUE ( OS_NAME )
);

CREATE TABLE CODE_PART (
  PART_CODE    VARCHAR2(10)     NOT NULL, 
  PART_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( PART_CODE ), 
    UNIQUE ( PART_NAME )
);

CREATE TABLE CODE_POSITION (
  POSITION_CODE    VARCHAR2(10)     NOT NULL, 
  POSITION_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( POSITION_CODE ), 
    UNIQUE ( POSITION_NAME )
);

CREATE TABLE CODE_SALARY_BANK (
  SALARY_BANK_CODE    VARCHAR2(10)      NOT NULL, 
  SALARY_BANK_NAME    VARCHAR2(100)     NOT NULL, 
    PRIMARY KEY ( SALARY_BANK_CODE ), 
    UNIQUE ( SALARY_BANK_NAME )
);

CREATE TABLE CODE_SERVER_COMPUTER (
  SERVER_COMPUTER_CODE    VARCHAR2(10)     NOT NULL, 
  SERVER_COMPUTER_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( SERVER_COMPUTER_CODE ), 
    UNIQUE ( SERVER_COMPUTER_NAME )
);

CREATE TABLE CODE_SKILL_CATEGORY (
  SKILL_CATEGORY_CODE    VARCHAR2(10)     NOT NULL, 
  SKILL_CATEGORY_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( SKILL_CATEGORY_CODE ), 
    UNIQUE ( SKILL_CATEGORY_NAME )
);

CREATE TABLE CODE_TOOL (
  TOOL_CODE    VARCHAR2(10)     NOT NULL, 
  TOOL_NAME    VARCHAR2(30)     NOT NULL, 
    PRIMARY KEY ( TOOL_CODE ), 
    UNIQUE ( TOOL_NAME )
);

CREATE TABLE BOARD (
  B_NO         NUMBER(20)         NOT NULL, 
  SUBJECT      VARCHAR2(200)      NOT NULL, 
  WRITER       VARCHAR2(100)      NOT NULL, 
  CONTENT      VARCHAR2(3000)     NOT NULL, 
  REG_DATE     DATE                   NULL, 
  READCOUNT    NUMBER(5)              NULL, 
  IMG_NAME     VARCHAR2(100)          NULL, 
    PRIMARY KEY ( B_NO )
);

CREATE TABLE DEV_EMPLOYEE (
  DEV_NUM        VARCHAR2(10)      NOT NULL, 
  ID             VARCHAR2(20)      NOT NULL, 
  PWD            VARCHAR2(20)      NOT NULL, 
  DNAME          VARCHAR2(30)      NOT NULL, 
  JUMIN_NUM      VARCHAR2(14)      NOT NULL, 
  PHONE          VARCHAR2(11)      NOT NULL, 
  EMAIL          VARCHAR2(30)      NOT NULL, 
  GO_ARMY        VARCHAR2(10)      NOT NULL, 
  ADDRESS        VARCHAR2(100)     NOT NULL, 
  SALARY_BANK    VARCHAR2(30)      NOT NULL, 
  ACCOUNT_NUM    VARCHAR2(30)      NOT NULL, 
  REG_DATE       DATE             DEFAULT sysdate              NOT NULL, 
    PRIMARY KEY ( DEV_NUM ), 
    UNIQUE ( ACCOUNT_NUM ), 
    UNIQUE ( EMAIL ), 
    UNIQUE ( PHONE ), 
    UNIQUE ( JUMIN_NUM ), 
    UNIQUE ( ID ), 
    FOREIGN KEY ( SALARY_BANK )
        REFERENCES KING.CODE_SALARY_BANK ( SALARY_BANK_CODE ), 
    FOREIGN KEY ( GO_ARMY )
        REFERENCES KING.CODE_GO_ARMY ( GO_ARMY_CODE )
);

CREATE TABLE DEV_DBMS_INFO (
  DEV_NUM      VARCHAR2(10)     NOT NULL, 
  DBMS_CODE    VARCHAR2(10)     NOT NULL, 
    FOREIGN KEY ( DBMS_CODE )
        REFERENCES KING.CODE_DBMS ( DBMS_CODE ), 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

CREATE TABLE DEV_EMERGENCY_LINE (
  DEV_NUM               VARCHAR2(10)     NOT NULL, 
  EMERGENCY_NAME        VARCHAR2(30)     NOT NULL, 
  EMERGENCY_RELATION    VARCHAR2(10)     NOT NULL, 
  EMERGENCY_PHONE       VARCHAR2(11)     NOT NULL, 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

CREATE TABLE DEV_FAMILY_INFO (
  DEV_NUM             VARCHAR2(10)     NOT NULL, 
  RELATION            VARCHAR2(12)     NOT NULL, 
  FAMILY_NAME         VARCHAR2(40)     NOT NULL, 
  FAMILY_JOB          VARCHAR2(40)     NOT NULL, 
  BIRTH_YEAR          NUMBER(9)        NOT NULL, 
  IS_LIVE_TOGETHER    VARCHAR2(10)    DEFAULT '비동거'         NULL, 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

CREATE TABLE DEV_INTEREST_INFO (
  DEV_NUM          VARCHAR2(10)     NOT NULL, 
  INTEREST_CODE    VARCHAR2(10)     NOT NULL, 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM ), 
    FOREIGN KEY ( INTEREST_CODE )
        REFERENCES KING.CODE_INTEREST ( INTEREST_CODE )
);

CREATE TABLE DEV_IT_LANGUAGE_INFO (
  DEV_NUM             VARCHAR2(10)     NOT NULL, 
  IT_LANGUAGE_CODE    VARCHAR2(10)     NOT NULL, 
    FOREIGN KEY ( IT_LANGUAGE_CODE )
        REFERENCES KING.CODE_IT_LANGUAGE ( IT_LANGUAGE_CODE ), 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

CREATE TABLE DEV_LICENSE (
  DEV_NUM         VARCHAR2(10)     NOT NULL, 
  LICENSE_CODE    VARCHAR2(10)     NOT NULL, 
    FOREIGN KEY ( LICENSE_CODE )
        REFERENCES KING.CODE_LICENSE ( LICENSE_CODE ), 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

CREATE TABLE DEV_LIKING_INFO (
  DEV_NUM           VARCHAR2(10)     NOT NULL, 
  DAY_SMOKING       NUMBER(2)        NOT NULL, 
  CAN_DRINK_SOJU    NUMBER(2)        NOT NULL, 
  CAN_DRINK_BEER    NUMBER(2)        NOT NULL, 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

CREATE TABLE DEV_OS_INFO (
  DEV_NUM    VARCHAR2(10)     NOT NULL, 
  OS_CODE    VARCHAR2(10)     NOT NULL, 
    FOREIGN KEY ( OS_CODE )
        REFERENCES KING.CODE_OS ( OS_CODE ), 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

CREATE TABLE DEV_PAST_PRJ_INFO (
  DEV_NUM                VARCHAR2(10)     NOT NULL, 
  PAST_PRJ_NAME          VARCHAR2(60)     NOT NULL, 
  PRJ_START_DATE         DATE             NOT NULL, 
  PRJ_FINISH_DATE        DATE             NOT NULL, 
  DISPATCH_LEVEL         VARCHAR2(10)     NOT NULL, 
  CLIENT_COMPANY_NAME    VARCHAR2(60)     NOT NULL, 
  WORK_COMPANY_NAME      VARCHAR2(60)     NOT NULL, 
  DISPATCH_ROLE          VARCHAR2(50)     NOT NULL, 
    FOREIGN KEY ( DISPATCH_ROLE )
        REFERENCES KING.CODE_DISPATCH_ROLE ( DISPATCH_ROLE_CODE ), 
    FOREIGN KEY ( DISPATCH_LEVEL )
        REFERENCES KING.CODE_DISPATCH_LEVEL ( DISPATCH_LEVEL_CODE ), 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

CREATE TABLE DEV_READING_LANGUAGE_INFO (
  DEV_NUM                 VARCHAR2(10)     NOT NULL, 
  CAN_READING_LANGUAGE    VARCHAR2(10)     NOT NULL, 
    FOREIGN KEY ( CAN_READING_LANGUAGE )
        REFERENCES KING.CODE_FOREIGN_LANGUAGE ( FOREIGN_LANGUAGE_CODE ), 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

CREATE TABLE DEV_RETIRE_LIST (
  DEV_NUM        VARCHAR2(10)     NOT NULL, 
  RETIRE_DATE    DATE            DEFAULT sysdate             NOT NULL, 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

CREATE TABLE DEV_SERVER_COMPUTER_INFO (
  DEV_NUM                 VARCHAR2(10)     NOT NULL, 
  SERVER_COMPUTER_CODE    VARCHAR2(10)     NOT NULL, 
    FOREIGN KEY ( SERVER_COMPUTER_CODE )
        REFERENCES KING.CODE_SERVER_COMPUTER ( SERVER_COMPUTER_CODE ), 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

CREATE TABLE DEV_SPEAKING_LANGUAGE_INFO (
  DEV_NUM                  VARCHAR2(10)     NOT NULL, 
  CAN_SPEAKING_LANGUAGE    VARCHAR2(10)     NOT NULL, 
    FOREIGN KEY ( CAN_SPEAKING_LANGUAGE )
        REFERENCES KING.CODE_FOREIGN_LANGUAGE ( FOREIGN_LANGUAGE_CODE ), 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

CREATE TABLE DEV_TOOL_INFO (
  DEV_NUM      VARCHAR2(10)     NOT NULL, 
  TOOL_CODE    VARCHAR2(10)     NOT NULL, 
    FOREIGN KEY ( TOOL_CODE )
        REFERENCES KING.CODE_TOOL ( TOOL_CODE ), 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

CREATE TABLE DOCTOR_INFO (
  DEV_NUM                 VARCHAR2(10)     NOT NULL, 
  DOCTOR_NAME             VARCHAR2(40)     NOT NULL, 
  DOCTOR_HAKBU            VARCHAR2(12)     NOT NULL, 
  DOCTOR_GRADUATE_DATE    DATE             NOT NULL, 
  MAJOR                   VARCHAR2(40)     NOT NULL, 
  MINOR                   VARCHAR2(40)         NULL, 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

CREATE TABLE FREELANCER (
  FREE_NUM             VARCHAR2(10)      NOT NULL, 
  FNAME                VARCHAR2(30)      NOT NULL, 
  GENDER               VARCHAR2(2)       NOT NULL, 
  EMAIL                VARCHAR2(30)      NOT NULL, 
  PHONE                VARCHAR2(11)      NOT NULL, 
  BIRTH_YEAR           NUMBER(38, 1)     NOT NULL, 
  HIGHESTLEVEL_EDU     VARCHAR2(15)      NOT NULL, 
  GRADUATE_DATE        DATE              NOT NULL, 
  CONSULTATION_TIME    DATE                  NULL, 
  JOB                  VARCHAR2(10)      NOT NULL, 
  DISPATCH_ROLE        VARCHAR2(10)      NOT NULL, 
  CAN_DISPATCH_DATE    DATE                  NULL, 
  FIX_DISPATCH_DATE    VARCHAR2(4)           NULL, 
  MIN_DEV_COST         VARCHAR2(10)          NULL, 
  MAX_DEV_COST         VARCHAR2(10)          NULL, 
  MIN_OPERATE_COST     VARCHAR2(10)          NULL, 
  MAX_OPERATE_COST     VARCHAR2(10)          NULL, 
  HOW_DEV_COST         VARCHAR2(10)          NULL, 
  HOW_OPERATE_COST     VARCHAR2(10)          NULL, 
  HAVE_NOTEBOOK        VARCHAR2(10)          NULL, 
  ABODE                VARCHAR2(10)      NOT NULL, 
  ETC_WANT             VARCHAR2(600)         NULL, 
  WRONG_PHONE          VARCHAR2(10)          NULL, 
  CALL_NOTICE          VARCHAR2(600)         NULL, 
  ETC_OPINION          VARCHAR2(600)         NULL, 
    CONSTRAINT SYS_C007551
    PRIMARY KEY ( FREE_NUM ), 
    UNIQUE ( PHONE ), 
    UNIQUE ( EMAIL ), 
    FOREIGN KEY ( DISPATCH_ROLE )
        REFERENCES KING.CODE_DISPATCH_ROLE ( DISPATCH_ROLE_CODE )
);

CREATE TABLE FREE_CAN_WORK_LOCATION_INFO (
  FREE_NUM         VARCHAR2(10)     NOT NULL, 
  LOCATION_CODE    VARCHAR2(10)     NOT NULL, 
    FOREIGN KEY ( LOCATION_CODE )
        REFERENCES KING.CODE_LOCATION ( LOCATION_CODE ), 
    CONSTRAINT SYS_C007552
    FOREIGN KEY ( FREE_NUM )
        REFERENCES KING.FREELANCER ( FREE_NUM )
);

CREATE TABLE FREE_FAVORITE_PART_INFO (
  FREE_NUM              VARCHAR2(10)     NOT NULL, 
  FAVORITE_PART_CODE    VARCHAR2(10)     NOT NULL, 
    CONSTRAINT SYS_C007553
    FOREIGN KEY ( FREE_NUM )
        REFERENCES KING.FREELANCER ( FREE_NUM ), 
    FOREIGN KEY ( FAVORITE_PART_CODE )
        REFERENCES KING.CODE_FAVORITE_PART ( FAVORITE_PART_CODE )
);

CREATE TABLE FREE_LICENSE (
  FREE_NUM        VARCHAR2(10)     NOT NULL, 
  LICENSE_CODE    VARCHAR2(10)     NOT NULL, 
    CONSTRAINT SYS_C007554
    FOREIGN KEY ( FREE_NUM )
        REFERENCES KING.FREELANCER ( FREE_NUM ), 
    FOREIGN KEY ( LICENSE_CODE )
        REFERENCES KING.CODE_LICENSE ( LICENSE_CODE )
);

CREATE TABLE FREE_SKILL_CATEGORY (
  FREE_NUM               VARCHAR2(10)     NOT NULL, 
  SKILL_CATEGORY_CODE    VARCHAR2(10)     NOT NULL, 
    FOREIGN KEY ( SKILL_CATEGORY_CODE )
        REFERENCES KING.CODE_SKILL_CATEGORY ( SKILL_CATEGORY_CODE ), 
    CONSTRAINT SYS_C007555
    FOREIGN KEY ( FREE_NUM )
        REFERENCES KING.FREELANCER ( FREE_NUM )
);

CREATE TABLE FREE_YEAR_INFO (
  FREE_NUM                  VARCHAR2(10)      NOT NULL, 
  RESUME_DEV_YEAR           NVARCHAR2(30)     NOT NULL, 
  DEV_YEAR_STANDARD_DATE    DATE              NOT NULL, 
    CONSTRAINT SYS_C007556
    FOREIGN KEY ( FREE_NUM )
        REFERENCES KING.FREELANCER ( FREE_NUM )
);

CREATE TABLE GYEOLJAE (
  GYEOLJAE_NUM              VARCHAR2(10)       NOT NULL, 
  REG_DATE                  DATE              DEFAULT sysdate               NOT NULL, 
  WRITER                    VARCHAR2(30)       NOT NULL, 
  TITLE                     VARCHAR2(200)      NOT NULL, 
  CONTENT                   VARCHAR2(4000)     NOT NULL, 
  DOCU_TYPE                 VARCHAR2(30)       NOT NULL, 
  GYEOLJAE_PROGRESS         VARCHAR2(10)      DEFAULT '미결'           NULL, 
  GYEOLJAE_PROGRESS_DATE    DATE                   NULL, 
    PRIMARY KEY ( GYEOLJAE_NUM ), 
    FOREIGN KEY ( DOCU_TYPE )
        REFERENCES KING.CODE_DOCUMENT_TYPE ( DOCUMENT_TYPE_CODE ), 
    FOREIGN KEY ( WRITER )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

CREATE TABLE HIGHSCHOOL_INFO (
  DEV_NUM                     VARCHAR2(10)     NOT NULL, 
  HIGHSCHOOL_NAME             VARCHAR2(40)     NOT NULL, 
  HIGHSCHOOL_GRADUATE_DATE    DATE             NOT NULL, 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

CREATE TABLE IS_BLACK_INFO (
  FREE_NUM             VARCHAR2(10)     NOT NULL, 
  BLACK_REASON_CODE    VARCHAR2(10)     NOT NULL, 
    FOREIGN KEY ( BLACK_REASON_CODE )
        REFERENCES KING.CODE_BLACK_REASON ( BLACK_REASON_CODE ), 
    CONSTRAINT SYS_C007557
    FOREIGN KEY ( FREE_NUM )
        REFERENCES KING.FREELANCER ( FREE_NUM )
);

CREATE TABLE ITCENTER_INFO (
  DEV_NUM              VARCHAR2(10)     NOT NULL, 
  ITCENTER_NAME        VARCHAR2(60)     NOT NULL, 
  EDU_PERIOD           NUMBER(10)       NOT NULL, 
  EDUFINISH_DATE       DATE             NOT NULL, 
  EDUFINISH_SUBJECT    VARCHAR2(40)     NOT NULL, 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

CREATE TABLE JUNIORCOLLEGE_INFO (
  DEV_NUM                        VARCHAR2(10)     NOT NULL, 
  JUNIORCOLLEGE_NAME             VARCHAR2(40)     NOT NULL, 
  JUNIORCOLLEGE_HAKBU            VARCHAR2(12)     NOT NULL, 
  JUNIORCOLLEGE_GRADUATE_DATE    DATE             NOT NULL, 
  MAJOR                          VARCHAR2(40)     NOT NULL, 
  MINOR                          VARCHAR2(40)         NULL, 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

CREATE TABLE MASTER_INFO (
  DEV_NUM                 VARCHAR2(10)     NOT NULL, 
  MASTER_NAME             VARCHAR2(40)     NOT NULL, 
  MASTER_HAKBU            VARCHAR2(12)     NOT NULL, 
  MASTER_GRADUATE_DATE    DATE             NOT NULL, 
  MAJOR                   VARCHAR2(40)     NOT NULL, 
  MINOR                   VARCHAR2(40)         NULL, 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

CREATE TABLE PAST_COMPANY_INFO (
  DEV_NUM         VARCHAR2(10)     NOT NULL, 
  COMPANY_NAME    VARCHAR2(60)     NOT NULL, 
  DUTY            VARCHAR2(10)     NOT NULL, 
  PART            VARCHAR2(10)     NOT NULL, 
  DEP             VARCHAR2(10)     NOT NULL, 
  POSITION        VARCHAR2(10)     NOT NULL, 
  HIRE_TYPE       VARCHAR2(10)     NOT NULL, 
  SALARY          NUMBER(5)        NOT NULL, 
  HIRED_DATE      DATE             NOT NULL, 
  RESIGN_DATE     DATE             NOT NULL, 
    FOREIGN KEY ( HIRE_TYPE )
        REFERENCES KING.CODE_HIRE_TYPE ( HIRE_TYPE_CODE ), 
    FOREIGN KEY ( POSITION )
        REFERENCES KING.CODE_POSITION ( POSITION_CODE ), 
    FOREIGN KEY ( DEP )
        REFERENCES KING.CODE_DEP ( DEP_CODE ), 
    FOREIGN KEY ( PART )
        REFERENCES KING.CODE_PART ( PART_CODE ), 
    FOREIGN KEY ( DUTY )
        REFERENCES KING.CODE_DUTY ( DUTY_CODE ), 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

CREATE TABLE PRJ (
  PRJ_NUM            VARCHAR2(10)      NOT NULL, 
  REG_DATE           DATE              NOT NULL, 
  MIN_PERIOD         DATE              NOT NULL, 
  MAX_PERIOD         DATE                  NULL, 
  PRJ_NAME           VARCHAR2(60)      NOT NULL, 
  CLIENT_COMPANY     VARCHAR2(60)      NOT NULL, 
  WORK_CONTENT       VARCHAR2(60)      NOT NULL, 
  WORK_PLACE         VARCHAR2(100)     NOT NULL, 
  GO_WORK_TIME       VARCHAR2(4)       NOT NULL, 
  COOPERATOR_NAME    VARCHAR2(60)      NOT NULL, 
  PRJ_ETC            VARCHAR2(600)         NULL, 
    PRIMARY KEY ( PRJ_NUM ), 
    UNIQUE ( PRJ_NAME ), 
    FOREIGN KEY ( COOPERATOR_NAME )
        REFERENCES KING.CODE_COOPERATOR_NAME ( COOPERATOR_NAME_CODE )
);

CREATE TABLE PRJ_DESI_LICENSE_INFO (
  PRJ_NUM         VARCHAR2(10)     NOT NULL, 
  LICENSE_CODE    VARCHAR2(10)     NOT NULL, 
    FOREIGN KEY ( LICENSE_CODE )
        REFERENCES KING.CODE_LICENSE ( LICENSE_CODE ), 
    FOREIGN KEY ( PRJ_NUM )
        REFERENCES KING.PRJ ( PRJ_NUM )
);

CREATE TABLE PRJ_DESI_PERSON_INFO (
  PRJ_NUM        VARCHAR2(10)     NOT NULL, 
  WORKED_YEAR    VARCHAR2(10)     NOT NULL, 
  PERSON_NUM     VARCHAR2(10)         NULL, 
    FOREIGN KEY ( PRJ_NUM )
        REFERENCES KING.PRJ ( PRJ_NUM )
);

CREATE TABLE PRJ_DEV_LICENSE_INFO (
  PRJ_NUM         VARCHAR2(10)     NOT NULL, 
  LICENSE_CODE    VARCHAR2(10)     NOT NULL, 
    FOREIGN KEY ( LICENSE_CODE )
        REFERENCES KING.CODE_LICENSE ( LICENSE_CODE ), 
    FOREIGN KEY ( PRJ_NUM )
        REFERENCES KING.PRJ ( PRJ_NUM )
);

CREATE TABLE PRJ_DEV_PERSON_INFO (
  PRJ_NUM        VARCHAR2(10)     NOT NULL, 
  WORKED_YEAR    VARCHAR2(10)     NOT NULL, 
  PERSON_NUM     VARCHAR2(10)         NULL, 
    FOREIGN KEY ( PRJ_NUM )
        REFERENCES KING.PRJ ( PRJ_NUM )
);

CREATE TABLE PRJ_JOIN_DEV_INFO (
  PRJ_NUM        VARCHAR2(10)     NOT NULL, 
  ALL_DEV_NUM    VARCHAR2(10)     NOT NULL, 
    FOREIGN KEY ( PRJ_NUM )
        REFERENCES KING.PRJ ( PRJ_NUM )
);

CREATE TABLE PRJ_OPER_LICENSE_INFO (
  PRJ_NUM         VARCHAR2(10)     NOT NULL, 
  LICENSE_CODE    VARCHAR2(10)     NOT NULL, 
    FOREIGN KEY ( LICENSE_CODE )
        REFERENCES KING.CODE_LICENSE ( LICENSE_CODE ), 
    FOREIGN KEY ( PRJ_NUM )
        REFERENCES KING.PRJ ( PRJ_NUM )
);

CREATE TABLE PRJ_OPER_PERSON_INFO (
  PRJ_NUM        VARCHAR2(10)     NOT NULL, 
  WORKED_YEAR    VARCHAR2(10)     NOT NULL, 
  PERSON_NUM     VARCHAR2(10)         NULL, 
    FOREIGN KEY ( PRJ_NUM )
        REFERENCES KING.PRJ ( PRJ_NUM )
);

CREATE TABLE PRJ_PUBL_LICENSE_INFO (
  PRJ_NUM         VARCHAR2(10)     NOT NULL, 
  LICENSE_CODE    VARCHAR2(10)     NOT NULL, 
    FOREIGN KEY ( LICENSE_CODE )
        REFERENCES KING.CODE_LICENSE ( LICENSE_CODE ), 
    FOREIGN KEY ( PRJ_NUM )
        REFERENCES KING.PRJ ( PRJ_NUM )
);

CREATE TABLE PRJ_PUBL_PERSON_INFO (
  PRJ_NUM        VARCHAR2(10)     NOT NULL, 
  WORKED_YEAR    VARCHAR2(10)     NOT NULL, 
  PERSON_NUM     VARCHAR2(10)         NULL, 
    FOREIGN KEY ( PRJ_NUM )
        REFERENCES KING.PRJ ( PRJ_NUM )
);

CREATE TABLE UNIVERSITY_INFO (
  DEV_NUM                     VARCHAR2(10)     NOT NULL, 
  UNIVERSITY_NAME             VARCHAR2(40)     NOT NULL, 
  UNIVERSITY_HAKBU            VARCHAR2(12)     NOT NULL, 
  UNIVERSITY_GRADUATE_DATE    DATE             NOT NULL, 
  MAJOR                       VARCHAR2(40)     NOT NULL, 
  MINOR                       VARCHAR2(40)         NULL, 
    FOREIGN KEY ( DEV_NUM )
        REFERENCES KING.DEV_EMPLOYEE ( DEV_NUM )
);

