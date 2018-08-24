create table bithumb (
  bithumb_pk        VARCHAR2(30)  PRIMARY KEY,
  bithumb_date      DATE          DEFAULT SYSDATE,
  currency          VARCHAR2(10)  NOT NULL,
  opening_price     NUMBER        NOT NULL,
  closing_price     NUMBER        NOT NULL,
  min_price         NUMBER        NOT NULL,
  max_price         NUMBER        NOT NULL,
  average_price     NUMBER        NOT NULL,
  units_traded      NUMBER        NOT NULL,
  volume_1day       NUMBER        NOT NULL,
  volume_7day       NUMBER        NOT NULL,
  buy_price         NUMBER        NOT NULL,
  sell_price        NUMBER        NOT NULL,
  fluctate_24H      NUMBER        NOT NULL,
  fluctate_rate_24H NUMBER        NOT NULL
);

create table upbit (
  upbit_pk              VARCHAR2(30)  PRIMARY KEY,
  upbit_date            DATE          DEFAULT SYSDATE,
  market                VARCHAR2(10)  NOT NULL,
  opening_price         NUMBER        NOT NULL,
  high_price            NUMBER        NOT NULL,
  low_price             NUMBER        NOT NULL,
  trade_price           NUMBER        NOT NULL,
  prev_closing_price    NUMBER        NOT NULL,
  change                VARCHAR2(5)   NOT NULL,
  change_price          NUMBER        NOT NULL,
  change_rate           NUMBER        NOT NULL,
  signed_change_price   NUMBER        NOT NULL,
  signed_change_rate    NUMBER        NOT NULL,
  trade_volume          NUMBER        NOT NULL,
  acc_trade_price       NUMBER        NOT NULL,
  acc_trade_price_24h   NUMBER        NOT NULL,
  acc_trade_volume      NUMBER        NOT NULL,
  acc_trade_volume_24h  NUMBER        NOT NULL
);
  
create table member (
  userid			      VARCHAR2(10)	PRIMARY KEY,
  passwd			      VARCHAR2(20)	NOT NULL,
  username 			    VARCHAR2(10)	NOT NULL,
  postcode			    VARCHAR2(6)		NOT NULL,
  primary_address	  VARCHAR2(500)	NOT NULL,
  detailed_address	VARCHAR2(500)	NOT NULL,
  phone				      VARCHAR2(11)	NOT NULL,
  email				      VARCHAR2(40)	NOT NULL
);
  
create table interest_item (
  userid 	  VARCHAR2(10) NOT NULL,
  currency 	VARCHAR2(10) NOT NULL,
  CONSTRAINT pk_interest_item PRIMARY KEY (userid, currency)
);
