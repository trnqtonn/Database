CREATE TABLE  CGTRINH (
	STT_CTR int NOT NULL ,
	TEN_CTR varchar (20)  NULL ,
	DIACHI_CTR varchar (20)  NULL ,
	TINH_THANH varchar (15)  NULL ,
	KINH_PHI int NULL ,
	TEN_CHU varchar (20)  NULL ,
	TEN_THAU varchar (20)  NULL ,
	NGAY_BD date NULL 
) ;


CREATE TABLE  CHUNHAN (
	TEN_CHU varchar (20)  NOT NULL ,
	DCHI_CHU varchar (20)  NULL 
) ;


CREATE TABLE  CHUTHAU (
	TEN_THAU varchar (20)  NOT NULL ,
	TEL char (7)  NULL ,
	DCHI_THAU varchar (20)  NULL 
) ;


CREATE TABLE  CONGNHAN (
	HOTEN_CN varchar (20)  NOT NULL ,
	NAMS_CN int NULL ,
	NAM_VAO_N int NULL ,
	CH_MON varchar (10)  NULL 
) ;


CREATE TABLE  KTRUCSU (
	HOTEN_KTS varchar (20)  NOT NULL ,
	NAMS_KTS int NULL ,
	PHAI char (2)  NULL ,
	NOI_TN varchar (15)  NULL ,
	DCHI_LL_KTS varchar (30)  NULL 
) ;


CREATE TABLE  THAMGIA (
	HOTEN_CN varchar (20)  NOT NULL ,
	STT_CTR int NOT NULL ,
	NGAY_TGIA date NULL ,
	SO_NGAY int NULL 
) ;


CREATE TABLE  THIETKE (
	HOTEN_KTS varchar (20)  NOT NULL ,
	STT_CTR int NOT NULL ,
	THU_LAO int NULL 
) ;


ALTER TABLE  CGTRINH ADD 
	CONSTRAINT PK_CGTRINH PRIMARY KEY  	(STT_CTR	)  ; 


ALTER TABLE  CHUNHAN ADD 
	CONSTRAINT PK_CHUNHAN PRIMARY KEY  (	TEN_CHU	)  ; 


ALTER TABLE  CHUTHAU ADD 
	CONSTRAINT PK_CHUTHAU PRIMARY KEY  (	TEN_THAU	)  ; 


ALTER TABLE  CONGNHAN ADD 
	CONSTRAINT PK_CONGNHAN PRIMARY KEY  (	HOTEN_CN	)  ; 


ALTER TABLE  KTRUCSU ADD 
	CONSTRAINT PK_KTRUCSU PRIMARY KEY  	(	HOTEN_KTS	)  ; 


ALTER TABLE  THAMGIA ADD 
	CONSTRAINT PK_THAMGIA PRIMARY KEY  	(	HOTEN_CN,	STT_CTR	)  ; 


ALTER TABLE  THIETKE ADD 
	CONSTRAINT PK_THIETKE PRIMARY KEY  	(	HOTEN_KTS,	STT_CTR	)  ; 


ALTER TABLE  CGTRINH ADD 
	CONSTRAINT FK_CGTRINH_CHUNHAN FOREIGN KEY 	(	TEN_CHU	) REFERENCES  CHUNHAN (	TEN_CHU	);

ALTER TABLE  CGTRINH ADD 
	CONSTRAINT FK_CGTRINH_CHUTHAU FOREIGN KEY 
	(	TEN_THAU	) REFERENCES  CHUTHAU (	TEN_THAU	);


ALTER TABLE  THAMGIA ADD 
	CONSTRAINT FK_THAMGIA_CGTRINH FOREIGN KEY 
	(		STT_CTR	) REFERENCES  CGTRINH (		STT_CTR	);

ALTER TABLE  THAMGIA ADD 
	CONSTRAINT FK_THAMGIA_CONGNHAN FOREIGN KEY 
	(		HOTEN_CN	) REFERENCES  CONGNHAN (		HOTEN_CN	);


ALTER TABLE  THIETKE ADD 
	CONSTRAINT FK_THIETKE_CGTRINH FOREIGN KEY 	(STT_CTR) REFERENCES  CGTRINH (	STT_CTR	);

ALTER TABLE  THIETKE ADD 
	CONSTRAINT FK_THIETKE_KTRUCSU FOREIGN KEY 
	(	HOTEN_KTS	) REFERENCES  KTRUCSU (	HOTEN_KTS );


insert into  chunhan values ('so t mai du lich','54 xo viet nghe tinh');
insert into  chunhan values ('so van hoa thong tin','101 hai ba trung');
insert into  chunhan values ('so giao duc','29 duong 3/2');
insert into  chunhan values ('dai hoc can tho','56 duong 30/4');
insert into  chunhan values ('cty bitis','29 phan dinh phung');
insert into  chunhan values ('nguyen thanh ha','45 de tham');
insert into  chunhan values ('phan thanh liem','48/6 huynh thuc khan');
select * from chunhan;

insert into  chuthau values ('cty xd so 6','567456','5 phan chu trinh');
insert into  chuthau values ('phong dich vu so xd','206481','2 le van sy');
insert into  chuthau values ('le van son','028374','12 tran nhan ton');
insert into  chuthau values ('tran khai hoan','658432','20 nguyen thai hoc');
select * from chuthau;

insert into  congnhan values ('nguyen thi suu',   45 ,    60  ,'ho');
insert into  congnhan values ('vi chi a',   66  ,    87  ,'han');
insert into  congnhan values ('le manh quoc',   56  ,    71 ,'moc');
insert into  congnhan values ('vo van chin',   40 ,    52  ,'son');
insert into  congnhan values ('le quyet thang',   54  ,    74 ,'son');
insert into  congnhan values ('nguyen hong van',   50  ,    70   ,'dien');
insert into  congnhan values ('dang van son',   48,    65 ,'dien');
select * from congnhan;

insert into  ktrucsu values ('le thanh tung',   1956          ,'1','tp hcm','25 duong 3/2 tp bien hoa');
insert into  ktrucsu values ('le kim dung',   1952          ,'0','ha noi','18/5 phan van tri tp can tho');
insert into  ktrucsu values ('nguyen anh thu',   1970          ,'0','new york usa','khu i dhct tp can tho');
insert into  ktrucsu values ('nguyen song do quyen',   1970          ,'0','tp hcm','73 tran hung dao tp hcm');
insert into  ktrucsu values ('truong minh thai',   1950          ,'1','paris france','12/2/5 tran phu tp hanoi');
select * from ktrucsu;

insert into  cgtrinh values 
( 1       ,'khach san quoc te','5 nguyen an ninh','can tho',450 ,'so t mai du lich','cty xd so 6','dec-13-1994'); 
insert into  cgtrinh values 
( 2       ,'cong vien thieu nhi','100 nguyen thai hoc','can tho',   200         ,'so van hoa thong tin','cty xd so 6','may-08-1994'); 
insert into  cgtrinh values 
( 3       ,'hoi cho nong nghiep','bai cat','vinh long',   1000        ,'so t mai du lich','phong dich vu so xd','jun-10-1994'); 
insert into  cgtrinh values 
( 4       ,'truong mg mang non','48 cm thang 8','can tho',   30          ,'so giao duc','le van son','jun-10-1994'); 
insert into  cgtrinh values 
( 5       ,'khoa trong trot dhct','khu ii dhct','can tho',   3000        ,'dai hoc can tho','le van son','jun-10-1994'); 
insert into  cgtrinh values 
( 6       ,'van phong bitis','25 phan dinh phung','ha noi',   40          ,'cty bitis','le van son','oct-05-1994'); 
insert into  cgtrinh values 
( 7       ,'nha rieng 1','124/5 nguyen trai','tp hcm',   65          ,'nguyen thanh ha','phong dich vu so xd','nov-15-1994'); 
insert into  cgtrinh values 
( 8       ,'nha rieng 2','76 chau van liem','ha noi',   100         ,'phan thanh liem','tran khai hoan','sep-06-1994'); 
select * from cgtrinh;

insert into  thamgia values ('nguyen thi suu',   2       ,'may-08-1994',   20          );
insert into  thamgia values ('nguyen thi suu',   4       ,'sep-07-1994',   20          );
insert into  thamgia values ('nguyen thi suu',   1       ,'dec-15-1994',   5           );
insert into  thamgia values ('le manh quoc',   1       ,'dec-18-1994',   6           );
insert into  thamgia values ('vo van chin',   2       ,'may-10-1994',   10          );
insert into  thamgia values ('le quyet thang',   2       ,'may-12-1994',   5           );
insert into  thamgia values ('nguyen hong van',   1       ,'dec-16-1994',   7           );
insert into  thamgia values ('nguyen hong van',   4       ,'sep-14-1994',   7           );
insert into  thamgia values ('dang van son',   3       ,'jun-10-1994',   18          );
insert into  thamgia values ('vo van chin',   3       ,'jun-10-1994',   10          );
select * from thamgia;


insert into  thietke values ('le thanh tung',   1       ,    25          );
insert into  thietke values ('le kim dung',   5       ,    30          );
insert into  thietke values ('truong minh thai',   8       ,    18          );
insert into  thietke values ('le kim dung',   6       ,    40          );
insert into  thietke values ('nguyen anh thu',   3       ,    12          );
insert into  thietke values ('le thanh tung',   7       ,    10          );
insert into  thietke values ('nguyen song do quyen',   2       ,    6           );
insert into  thietke values ('truong minh thai',   6       ,    27          );
insert into  thietke values ('le kim dung',   4       ,    20          );
insert into  thietke values ('truong minh thai',   1       ,    12          );
select * from thietke;



--cau3
select * from ktrucsu
where hoten_kts like 'le%'
and nams_kts = 1956;

--cau4
select distinct ten_ctr from cgtrinh
where ngay_bd between '9-1-1994' and '10-20-1994';

--cau5
select distinct CT.ten_ctr, CT.diachi_ctr from cgtrinh CT
join chuthau CTH on CT.ten_thau = CTH.ten_thau
where CTH.ten_thau ='cty xd so 6';
select ten_ctr, diachi_ctr from cgtrinh
where ten_thau = 'cty xd so 6';

--cau6
select distinct CTH.* from chuthau CTH
join cgtrinh CT on CTH.ten_thau = CT.ten_thau
join thietke TK on CT.stt_ctr = TK.stt_ctr
join ktrucsu KTS on TK.hoten_kts = KTS.hoten_kts
where CT.tinh_thanh = 'can tho'
and KTS.hoten_kts ='le kim dung';

--cau7
select distinct KTS.noi_tn from ktrucsu KTS
join thietke TK on KTS.hoten_kts = TK.hoten_kts
join cgtrinh CT on TK.stt_ctr = CT.stt_ctr
where CT.ten_ctr = 'khach san quoc te'
and CT.tinh_thanh ='can tho';

--cau8
select distinct CN.hoten_cn, CN.nams_cn, CN.nam_vao_n from congnhan CN
join thamgia TG on CN.hoten_cn = TG.hoten_cn
join cgtrinh CT on TG.stt_ctr = CT.stt_ctr
join chuthau CTH on CT.ten_thau = CTH.ten_thau
where CTH.ten_thau ='le van son'
and (CN.ch_mon = 'han' or CN.ch_mon = 'dien');

--cau9
select distinct CN.* from congnhan CN
join thamgia TG on CN.hoten_cn = TG.hoten_cn
join cgtrinh CT on TG.stt_ctr = CT.stt_ctr
where CT.ten_ctr = 'khach san quoc te'
and CT.tinh_thanh = 'can tho'
and TG.ngay_tgia between '12-15-1994' and '12-31-1994';

--cau10
select distinct KTS.hoten_kts, KTS.nams_kts from ktrucsu KTS
join thietke TK on KTS.hoten_kts = TK.hoten_kts
join cgtrinh CT on TK.stt_ctr = CT.stt_ctr
where CT.kinh_phi > '400'
and KTS.noi_tn = 'tp hcm'
group by KTS.hoten_kts, KTS.nams_kts having count(*) >=1

--cau11
select distinct CN.hoten_cn, CN.ch_mon from congnhan CN
join thamgia TG on CN.hoten_cn = TG.hoten_cn
join thietke TK on TG.stt_ctr = TK.stt_ctr
join ktrucsu KTS on TK.hoten_kts = KTS.hoten_kts
where KTS.hoten_kts = 'le thanh tung';

--cau12
select ten_ctr from cgtrinh
where kinh_phi = (
    select max(kinh_phi)
    from cgtrinh
);

--cau13
select hoten_kts from ktrucsu
where nams_kts = (
    select max(nams_kts)
    from ktrucsu
);

--cau14
select CTH.ten_thau, sum(CT.kinh_phi) as TONG_KINH_PHI
from cgtrinh CT
join chuthau CTH on CT.ten_thau = CTH.ten_thau
group by CTH.ten_thau;

--cau15
select distinct CTH.ten_thau, CTH.dchi_thau from chuthau CTH
join cgtrinh CT on CTH.ten_thau = CT.ten_thau
where CT.kinh_phi = (
    select min(kinh_phi)
    from cgtrinh
);

--cau16
select distinct KTS.hoten_kts from ktrucsu KTS
join thietke TK on KTS.hoten_kts = TK.hoten_kts
join cgtrinh CT on TK.stt_ctr = CT.stt_ctr
group by KTS.hoten_kts having sum(TK.thu_lao) > 25;

--cau17
select count(*) as SO_LUONG
from(
    select hoten_kts
    from thietke
    group by hoten_kts having sum(thu_lao) > 25
);

--cau18
select hoten_kts, count(stt_ctr) as SO_CONG_TRINH
from thietke
group by hoten_kts;

--cau19
select CT.ten_ctr, count(TG.hoten_cn) as SO_CONG_NHAN
from cgtrinh CT
join thamgia TG on CT.stt_ctr = TG.stt_ctr
group by CT.ten_ctr;

--cau20
select distinct CT.ten_ctr, CT.diachi_ctr from cgtrinh CT
join thamgia TG on CT.stt_ctr = TG.stt_ctr
group by CT.stt_ctr, CT.ten_ctr, CT.diachi_ctr
having count(TG.hoten_cn) >= all (
    select count(hoten_cn)
    from thamgia
    group by stt_ctr
);

--cau21
select tinh_thanh, avg(kinh_phi) as KINH_PHI_TB
from cgtrinh
group by tinh_thanh;

--cau22
select CT.ten_ctr, CT.diachi_ctr from cgtrinh CT
join thamgia TG on CT.stt_ctr = TG.stt_ctr
join congnhan CN on TG.hoten_cn = CN.hoten_cn
where CN.hoten_cn = 'nguyen hong van'
and  to_date ('dec-18-1994', 'MM-DD-YYYY') between TG.ngay_tgia and TG.ngay_tgia + TG.so_ngay - 1;

--cau23
select KTS.hoten_kts from ktrucsu KTS
join thietke TK on KTS.hoten_kts = TK.hoten_kts
join cgtrinh CT on TK.stt_ctr = CT.stt_ctr
join chuthau CTH on CT.ten_thau = CTH.ten_thau
where CTH.ten_thau = 'phong dich vu so xd'
intersect 
select KTS.hoten_kts from ktrucsu KTS
join thietke TK on KTS.hoten_kts = TK.hoten_kts
join cgtrinh CT on TK.stt_ctr = CT.stt_ctr
join chuthau CTH on CT.ten_thau = CTH.ten_thau
where CTH.ten_thau = 'cty xd so 6';

--cau24
select CN.hoten_cn from congnhan CN
join thamgia TG on CN.hoten_cn = TG.hoten_cn
join cgtrinh CT on TG.stt_ctr = CT.stt_ctr
where CT.tinh_thanh = 'can tho'
minus
select CN.hoten_cn from congnhan CN
join thamgia TG on CN.hoten_cn = TG.hoten_cn
join cgtrinh CT on TG.stt_ctr = CT.stt_ctr
where CT.tinh_thanh = 'vinh long';

--cau25
select distinct CTH.ten_thau from chuthau CTH
join cgtrinh CT on CTH.ten_thau = CT.ten_thau
where CT.kinh_phi > all(
    select kinh_phi
    from cgtrinh
    where ten_thau = 'phong dich vu so xd'
);

--cau26
select distinct KTS.hoten_kts from ktrucsu KTS
join thietke TK on KTS.hoten_kts = TK.hoten_kts
where TK.thu_lao < (
    select avg(thu_lao)
    from thietke
);

--cau27
select CN.hoten_cn from congnhan CN
join thamgia TG on CN.hoten_cn = TG.hoten_cn
group by CN.hoten_cn
having sum(TG.so_ngay) > (
    select sum(so_ngay)
    from thamgia
    where hoten_cn = 'nguyen hong van'
);

--cau28
select hoten_cn from thamgia
group by hoten_cn having count(distinct stt_ctr) = (
    select count(*)
    from cgtrinh
);

--cau29
select CN.hoten_cn from congnhan CN
where not exists (
    select STT_CTR
    from thamgia
    where hoten_cn = 'nguyen hong van'

    minus

    select STT_CTR
    from thamgia TG
    where TG.hoten_cn = CN.hoten_cn
);

--cau30
select distinct CT1.ten_thau, CT2.ten_thau from cgtrinh CT1
join cgtrinh CT2 on CT1.tinh_thanh = CT2.tinh_thanh
where CT1.ten_thau < CT2.ten_thau;

--cau31
select TG1.hoten_cn, TG2.hoten_cn from thamgia TG1
join thamgia TG2 on TG1.stt_ctr = TG2.stt_ctr
where TG1.hoten_cn < TG2.hoten_cn
group by TG1.hoten_cn, TG2.hoten_cn having count(distinct TG1.stt_ctr) >=2;