@all 57kmt: 
# db :
db struct + data + sp ở trong file sql_gen_db.sql, thay đổi đường dẫn lưu db cho phù hợp rồi chạy nó để tạo db

# api c#:
code c# aspx ở trong file api.aspx.cs : thằng này gọi sp_chart để lấy về json

# js ajax call api c# -> json:
code js trong file index.html: thằng js sẽ dùng ajax để gọi api.aspx, truyền lên sid=1 và lấy về json, biến đổi 1 chút, rồi dùng thư viện google chart để vẽ biểu đồ.

# thư viện google chart: 
nó ở đây: https://developers.google.com/chart/interactive/docs/gallery
