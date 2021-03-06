#### mysqlログイン
```
mysql -u root -p
```

#### mysql停止
```
quit;
```

#### database一覧
```
show databases;
```

#### user一覧
```
select user();
```

#### データベース作成
```
create database データベース名;
```

#### データベース削除
```
drop database データベース名;
```

#### 操作対象のデータベース確認
```
select databases();
```

#### 操作対象のデータベースを指定
```
use データベース名;
```

#### 作業用ユーザーの作成
```
create user ユーザー名@localhost identified by 'パスワード';
```

#### 作業用ユーザーに権限付与
```
grant all on データベース名.* to ユーザー名@localhost;
```

#### ユーザーの削除
```
drop user ユーザー名@localhost
```

#### 外部ファイルを読み込む
```
mysql -u root -p < ファイルのパス

 もしくは

\. ファイルのパス
```

#### table作成
```
create table テーブル名 (
  カラム名 データ型 オプション,
);
```

#### table一覧
```
show tables;
```

#### table構造確認
```
desc users;
```

#### table削除
```
drop table テーブル名;
```

#### データの挿入
```
// 1カラムの場合
insert into テーブル名 (カラム名) values (データの内容);

// 複数カラムの場合
insert into テーブル名 (カラム1, カラム2, カラム3) values (カラム1の内容, カラム2の内容, カラム3の内容);

// 複数データを作成したい場合
insert into テーブル名 (カラム1, カラム2, カラム3) values
  (カラム1の内容, カラム2の内容, カラム3の内容),
  (カラム1の内容, カラム2の内容, カラム3の内容),
  (カラム1の内容, カラム2の内容, カラム3の内容);
```

#### データの参照系
```
// 全てのデータ
select * from テーブル名;

// 必要なカラムのみ指定
select カラム名 from テーブル名;

// 複数カラム
select カラム名, カラム名 from テーブル名;

// ランダムに並べ替える
select from テーブル名 order by rand();
```

#### テーブルにカラムを追加
```
alter table テーブル名 add column カラム名 データ型;

// 任意の場所に追加したい場合
alter table テーブル名 add column カラム名 データ型 after 追加したい場所直前のカラム名;
```

#### カラムの削除
```
alter table テーブル名 drop column カラム名;
```

#### カラムの内容変更
```
alter table テーブル名 change カラム名 新カラム名 データ型;
```

#### テーブル名変更
```
alter table テーブル名 rename 新テーブル名;
```

#### データの変更
```
update テーブル名 set カラム名 = 変更内容 where 条件;
```

#### データの削除
```
// 全件
delete from テーブル名;

// 条件指定
delete from テーブル名 where 条件;
```

#### 内部結合
```
select カラム名 from テーブル名 join 結合するテーブル名 on 主キー = 外部キー;
```

#### 外部結合
```
select * from テーブル名 left outer join 結合するテーブル名 on 主キー = 外部キー;
select * from テーブル名 right outer join 結合するテーブル名 on 主キー = 外部キー;
```

#### 外部キー制約の付与
```
alter table テーブル名 and constraint 外部キー制約名 foreign key (外部キー) references 親テーブル名 (主キー);

// 例
alter table comments and constraint fk_comments foreign key (post_id) references posts (id);
```

#### 外部キー削除
```
alter table テーブル名 drop foreign key 外部キー制約名;

//例
alter table comments drop foreign key fk_comments;
```
