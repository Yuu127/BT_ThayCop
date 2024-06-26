USE [demo]
GO
/****** Object:  StoredProcedure [dbo].[SP_thoi_tiet]    Script Date: Wed,15,05,2024 3:20:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SP_thoi_tiet]
	@action varchar(10)
	
AS
BEGIN
	if(@action='get_data')
	begin
		DECLARE @json NVARCHAR(MAX) = '';

		-- Xây dựng chuỗi JSON
		SELECT @json += FORMATMESSAGE(N'{"id":%d,"sid":%d,"value":%d},', id, [sid],[value])
		FROM history;

		-- Xóa dấu phẩy thừa ở cuối chuỗi nếu có
		IF LEN(@json) > 0
		BEGIN
			SET @json = LEFT(@json, LEN(@json) - 1);
		END

		-- Bao chuỗi bằng dấu ngoặc vuông để tạo thành mảng JSON
		SET @json = '[' + @json + ']';

		-- Hiển thị kết quả
		SELECT @json;
	end
	
END

 exec SP_thoi_tiet @action = 'get_data'