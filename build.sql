drop table if exists Adjustment;

drop table if exists List;

drop table if exists Ornaments;

drop table if exists Transcaction;

drop table if exists Users;

/*==============================================================*/
/* Table: Adjustment                                            */
/*==============================================================*/
create table Adjustment
(
   Ad_id                int not null auto_increment,
   P_id                 int,
   Ad_from              int,
   Ad_goto              int,
   Ad_state             int,
   primary key (Ad_id)
);

/*==============================================================*/
/* Table: List                                                  */
/*==============================================================*/
create table List
(
   Tr_id                int auto_increment,
   P_id                 int,
   Ls_id                int not null,
   primary key (Ls_id)
);

/*==============================================================*/
/* Table: Ornaments                                             */
/*==============================================================*/
create table Ornaments
(
   P_id                 int not null auto_increment,
   P_imurl              char(100),
   P_price              float,
   P_position           int,
   P_uuid               char(100),
   P_num                int,
   P_state              int,
   P_data               date,
   P_type               int,
   primary key (P_id)
);

/*==============================================================*/
/* Table: Transcaction                                          */
/*==============================================================*/
create table Transcaction
(
   Tr_id                int not null auto_increment,
   Tr_price             float,
   Tr_date              date,
   primary key (Tr_id)
);

/*==============================================================*/
/* Table: Users                                                 */
/*==============================================================*/
create table Users
(
   user_id              int not null auto_increment,
   user_name            char(40),
   user_pwd             char(40),
   primary key (user_id)
);

alter table Adjustment add constraint FK_Relationship_3 foreign key (P_id)
      references Ornaments (P_id) on delete restrict on update restrict;

alter table List add constraint FK_Relationship_1 foreign key (Tr_id)
      references Transcaction (Tr_id) on delete restrict on update restrict;

alter table List add constraint FK_Relationship_2 foreign key (P_id)
      references Ornaments (P_id) on delete restrict on update restrict;
