CREATE TABLE [dbo].[urun] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
	[KullaniciAdi]  NVARCHAR (50)  NOT NULL,
    [UrunAdi]  NVARCHAR (50)  NOT NULL,
    [Fiyat]    NVARCHAR (50)  NOT NULL,
    [Resim]    NVARCHAR (256) NOT NULL,
    [Aciklama] NVARCHAR (50)  NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

