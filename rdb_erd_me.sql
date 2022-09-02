
CREATE TABLE Company
(
  ID      VARCHAR(200) NOT NULL COMMENT 'UniqueID',
  Name    VARCHAR(200) NOT NULL COMMENT '이름',
  Age     INT          NULL     COMMENT '나이',
  Address VARCHAR(200) NULL     COMMENT '주소',
  Salary  INT          NOT NULL COMMENT '급여',
  PRIMARY KEY (ID)
);

CREATE TABLE COMPANY_DEPT
(
  Company_ID VARCHAR(200) NOT NULL COMMENT 'UniqueID',
  DEPT_ID    VARCHAR(200) NOT NULL COMMENT 'UniqueID'
) COMMENT '관계테이블';

CREATE TABLE Department
(
  ID   VARCHAR(200) NOT NULL COMMENT 'UniqueID',
  DEPT VARCHAR(200) NOT NULL COMMENT '부서',
  PRIMARY KEY (ID)
);

ALTER TABLE COMPANY_DEPT
  ADD CONSTRAINT FK_Department_TO_COMPANY_DEPT
    FOREIGN KEY (Company_ID)
    REFERENCES Department (ID);

ALTER TABLE COMPANY_DEPT
  ADD CONSTRAINT FK_Company_TO_COMPANY_DEPT
    FOREIGN KEY (DEPT_ID)
    REFERENCES Company (ID);
