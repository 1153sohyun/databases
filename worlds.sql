
CREATE TABLE city_me
(
  ID          INT          NOT NULL COMMENT '아이디',
  Name        VARCHAR(200) NULL     COMMENT '도시명',
  CountryCode VARCHAR(200) NOT NULL COMMENT '국가 코드',
  CountryCode VARCHAR(200) NOT NULL COMMENT '국가 코드',
  PRIMARY KEY (ID)
) COMMENT '도시';

CREATE TABLE country_me
(
  Code           VARCHAR(3)    NULL     COMMENT '국가코드',
  Name           VARCHAR(52)   NULL     COMMENT '도시명',
  Continent      ENUM          NULL     COMMENT '대륙',
  Region         VARCHAR(26)   NULL     COMMENT '지역',
  SurfaceArea    DECIMAL(10,2) NULL     COMMENT '면적',
  IndepYear      SMALLINT      NULL     COMMENT '독립연도',
  Population     INT           NULL     COMMENT '인구',
  LifeExpectancy DECIMAL(3,1)  NULL     COMMENT '기대수명',
  GNP            DECIMAL(10,2) NULL     COMMENT '국민총생산',
  GNPOld         DECIMAL(10,2) NULL     COMMENT '과거GNP',
  LocalName      CHAR(45)      NULL     COMMENT '현지역국가이름',
  GovernmentForm CHAR(45)      NULL     COMMENT '정부형태',
  HeadofState    CHAR(60)      NULL     COMMENT '대통령',
  Capital        INT           NULL     COMMENT '수도',
  Code2          CHAR(2)       NULL     COMMENT '코드2',
  CountryCode    VARCHAR(200)  NOT NULL COMMENT '국가 코드',
  PRIMARY KEY (CountryCode)
) COMMENT '나라';

CREATE TABLE countrylanguage_me
(
  CountryCode VARCHAR(200) NOT NULL COMMENT '국가 코드',
  Language    VARCHAR(200) NULL     COMMENT '언어명',
  IsOfficial  ENUM         NULL    ,
  Percentage  DECIMAL      NULL    ,
  PRIMARY KEY (CountryCode)
) COMMENT '국가별 언어';

ALTER TABLE city_me
  ADD CONSTRAINT FK_country_me_TO_city_me
    FOREIGN KEY (CountryCode)
    REFERENCES country_me (CountryCode);

ALTER TABLE city_me
  ADD CONSTRAINT FK_countrylanguage_me_TO_city_me
    FOREIGN KEY (CountryCode)
    REFERENCES countrylanguage_me (CountryCode);
