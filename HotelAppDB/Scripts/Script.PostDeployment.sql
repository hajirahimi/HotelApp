if not exists (select 1 from dbo.RoomTypes)
begin
insert into dbo.RoomTypes(Title, Description,Price)
values
('Three twin beds','for up to to 3 gownup and 1 kid',100),
('two queen beds','for up to to 4 gownup',110),
('One king beds','for up to to 2 gownup and one kid',150),
('Two king beds','for up to to 4 gownup and tow kid',160),
('executive suit','for up to to 6 gownup and 4 kid',200);
end

if not exists (select 1 from dbo.Rooms)
begin
	declare @roomId1 int;
	declare @roomId2 int;
	declare @roomId3 int;
	declare @roomId4 int;
	declare @roomId5 int;

	select @roomId1 = Id from dbo.RoomTypes where Title = 'Three twin beds';
	select @roomId2 = Id from dbo.RoomTypes where Title = 'two queen beds';
	select @roomId3 = Id from dbo.RoomTypes where Title = 'One king beds';
	select @roomId4 = Id from dbo.RoomTypes where Title = 'Two king beds';
	select @roomId5 = Id from dbo.RoomTypes where Title = 'executive suit';

insert into dbo.Rooms(RoomNumber, RoomTypeId)
values
('101',@roomId1),
('102',@roomId1),
('103',@roomId1),
('201',@roomId2),
('202',@roomId2),
('301',@roomId3),
('302',@roomId3),
('303',@roomId3),
('401',@roomId4),
('402',@roomId4),
('501',@roomId5);

end

