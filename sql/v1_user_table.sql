Create table dbo.User
( 
    ID int identity(1,1) Primary Key, 
    FirstName nvarchar(100) not null, 
    LastName nvarchar(100) not null, 
    Email nvarchar(250) not null,
    Age int default(1)

)