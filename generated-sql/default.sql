
-----------------------------------------------------------------------
-- user
-----------------------------------------------------------------------

DROP TABLE IF EXISTS [user];

CREATE TABLE [user]
(
    [id] INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    [name] VARCHAR(128) NOT NULL,
    UNIQUE ([id])
);

-----------------------------------------------------------------------
-- restaurant
-----------------------------------------------------------------------

DROP TABLE IF EXISTS [restaurant];

CREATE TABLE [restaurant]
(
    [id] INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    [name] VARCHAR(128) NOT NULL,
    [lat] VARCHAR(128) NOT NULL,
    [lng] VARCHAR(128) NOT NULL,
    UNIQUE ([id])
);

-----------------------------------------------------------------------
-- address
-----------------------------------------------------------------------

DROP TABLE IF EXISTS [address];

CREATE TABLE [address]
(
    [id] INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    [address] VARCHAR(128) NOT NULL,
    [lat] VARCHAR(128) NOT NULL,
    [lng] VARCHAR(128) NOT NULL,
    UNIQUE ([id])
);

-----------------------------------------------------------------------
-- orders
-----------------------------------------------------------------------

DROP TABLE IF EXISTS [orders];

CREATE TABLE [orders]
(
    [id] INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    [user_id] INTEGER NOT NULL,
    [address_id] INTEGER NOT NULL,
    [restaurant_id] INTEGER NOT NULL,
    [value] DECIMAL NOT NULL,
    [date] DATETIME NOT NULL,
    [status] INTEGER NOT NULL,
    UNIQUE ([id]),
    FOREIGN KEY ([user_id]) REFERENCES [user] ([id]),
    FOREIGN KEY ([address_id]) REFERENCES [address] ([id]),
    FOREIGN KEY ([restaurant_id]) REFERENCES [restaurant] ([id])
);
