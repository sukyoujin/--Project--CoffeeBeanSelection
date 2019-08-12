-- 향 procedure
create or replace procedure scent_best
is
   cursor coffee_cursor
   is
          select rownum, nickname, explain, name, scent, sour, sweet, bitter, body, point
           from (select * from coffee_bean
           order by scent desc, name asc)
           where rownum < 4;
begin
   dbms_output.put_line('-- 향이 풍부한 순으로 추천해드리는 세 가지 원두입니다.');
   for coffee_data in coffee_cursor loop
      dbms_output.put_line('=========================');
      dbms_output.put_line(coffee_data.rownum || '. ' || coffee_data.nickname || ', ' || coffee_data.name);   
      dbms_output.put_line(coffee_data.explain);
      dbms_output.put_line('향: ' || coffee_data.scent);
      dbms_output.put_line('신맛: ' || coffee_data.sour);
      dbms_output.put_line('단맛: ' || coffee_data.sweet);
      dbms_output.put_line('쓴맛: ' || coffee_data.bitter);
      dbms_output.put_line('바디: ' || coffee_data.body);
      dbms_output.put_line('*추천 포인트: ' || coffee_data.point);
   end loop;
end;
/

exec scent_best;

-- 신맛 procedure
create or replace procedure sour_best
is
   cursor coffee_cursor
   is
          select rownum, nickname, explain, name, scent, sour, sweet, bitter, body, point
           from (select * from coffee_bean
           order by sour desc, name asc)
           where rownum < 4;
begin
   dbms_output.put_line('-- 신맛이 풍부한 순으로 추천해드리는 세 가지 원두입니다.');
   for coffee_data in coffee_cursor loop
      dbms_output.put_line('=========================');
      dbms_output.put_line(coffee_data.rownum || '. ' || coffee_data.nickname || ', ' || coffee_data.name);   
      dbms_output.put_line(coffee_data.explain);
     dbms_output.put_line('신맛: ' || coffee_data.sour);
      dbms_output.put_line('향: ' || coffee_data.scent);
      dbms_output.put_line('단맛: ' || coffee_data.sweet);
      dbms_output.put_line('쓴맛: ' || coffee_data.bitter);
      dbms_output.put_line('바디: ' || coffee_data.body);
      dbms_output.put_line('*추천 포인트: ' || coffee_data.point);
   end loop;
end;
/

exec sour_best;

-- 단맛 procedure
create or replace procedure sweet_best
is
   cursor coffee_cursor
   is
          select rownum, nickname, explain, name, scent, sour, sweet, bitter, body, point
           from (select * from coffee_bean
           order by sweet desc, name asc)
           where rownum < 4;
begin
   dbms_output.put_line('-- 단맛이 풍부한 순으로 추천해드리는 세 가지 원두입니다.');
   for coffee_data in coffee_cursor loop
      dbms_output.put_line('=========================');
      dbms_output.put_line(coffee_data.rownum || '. ' || coffee_data.nickname || ', ' || coffee_data.name);   
      dbms_output.put_line(coffee_data.explain);
     dbms_output.put_line('단맛: ' || coffee_data.sweet);
      dbms_output.put_line('향: ' || coffee_data.scent);
      dbms_output.put_line('신맛: ' || coffee_data.sour);
      dbms_output.put_line('쓴맛: ' || coffee_data.bitter);
      dbms_output.put_line('바디: ' || coffee_data.body);
      dbms_output.put_line('*추천 포인트: ' || coffee_data.point);
   end loop;
end;
/

exec sweet_best;

exec sweet_best;

-- 쓴맛 procedure
create or replace procedure bitter_best
is
   cursor coffee_cursor
   is
          select rownum, nickname, explain, name, scent, sour, sweet, bitter, body, point           from (select * from coffee_bean
           order by bitter desc, name asc)
           where rownum < 4;
begin
    dbms_output.put_line('-- 쓴맛이 풍부한 순으로 추천해드리는 세 가지 원두입니다!');
   for coffee_data in coffee_cursor loop
      dbms_output.put_line('=========================');
      dbms_output.put_line(coffee_data.rownum || '. ' || coffee_data.nickname || ', ' || coffee_data.name);   
      dbms_output.put_line(coffee_data.explain);
     dbms_output.put_line('쓴맛: ' || coffee_data.bitter);
      dbms_output.put_line('향: ' || coffee_data.scent);
      dbms_output.put_line('신맛: ' || coffee_data.sour);
      dbms_output.put_line('단맛: ' || coffee_data.sweet);
      dbms_output.put_line('바디: ' || coffee_data.body);
      dbms_output.put_line('*추천 포인트: ' || coffee_data.point);
   end loop;
end;
/

exec bitter_best;

-- 바디 procedure
create or replace procedure body_best
is
   cursor coffee_cursor
   is
          select rownum, nickname, explain, name, scent, sour, sweet, bitter, body, point           from (select * from coffee_bean
           order by body desc, name asc)
           where rownum < 4;
begin
    dbms_output.put_line('-- 바디감이 풍부한 순으로 추천해드리는 세 가지 원두입니다!');
    for coffee_data in coffee_cursor loop
      dbms_output.put_line('=========================');
      dbms_output.put_line(coffee_data.rownum || '. ' || coffee_data.nickname || ', ' || coffee_data.name);   
      dbms_output.put_line(coffee_data.explain);
     dbms_output.put_line('바디: ' || coffee_data.body);
      dbms_output.put_line('향: ' || coffee_data.scent);
      dbms_output.put_line('신맛: ' || coffee_data.sour);
      dbms_output.put_line('단맛: ' || coffee_data.sweet);
      dbms_output.put_line('쓴맛: ' || coffee_data.bitter);
      dbms_output.put_line('*추천 포인트: ' || coffee_data.point);
   end loop;
end;
/

exec body_best;

exec scent_best;
exec sour_best;
exec sweet_best;
exec bitter_best;
exec body_best;