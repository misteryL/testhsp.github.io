package com.secondshop.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.secondshop.models.Good;

public interface GoodMapper {
	@Select("Select * from good where status_id = 1 ORDER BY upload_date DESC LIMIT #{0}, #{1};")
	List<Good> getAllGoods(int offset, int limit);

	@Select("Select * from good ORDER BY upload_date DESC;")
	List<Good> getAllGoodList();

	@Select("Select * from good WHERE second_type_id = #{0} and status_id = 1 ORDER BY upload_date DESC;")
	List<Good> getGoodsByTypeId(Integer secondTypeId);

	@Select("Select * from good WHERE second_type_id = #{0} ORDER BY upload_date DESC;")
	List<Good> getGoodsAdminByTypeId(Integer secondTypeId);

	@Select("Select count(*) from good where status_id = 1;")
	int getAllGoodsCount();

	@Select("Select * from good WHERE name like #{0} and status_id = 1 ORDER BY upload_date DESC LIMIT #{1}, #{2};")
	List<Good> getGoodsBySearch(String searchText, int offset, int limit);

	@Select("Select count(*) from good WHERE name like #{0} and status_id = 1;")
	int getGoodsBySearchCount(String searchText);

	@Select("Select * from good WHERE second_type_id = #{0} and status_id = 1 ORDER BY upload_date DESC LIMIT #{1}, #{2};")
	List<Good> getGoodsByType(Integer secondTypeId, int offset, int limit);

	@Select("Select count(*) from good WHERE second_type_id = #{0} and status_id = 1;")
	int getGoodsByTypeCount(Integer secondTypeId);

	@Select("Select * from good WHERE id = #{goodId};")
	Good getGoodById(int goodId);

	@Select("SELECT * FROM good WHERE second_type_id = #{0} AND id != #{1} and status_id = 1 ORDER BY upload_date DESC LIMIT 0, 5;")
	List<Good> getRECGoods(Integer secondTypeId, Integer goodId);

	@Select("SELECT * FROM good WHERE user_id = #{userId} and status_id = 1 ORDER BY upload_date DESC;")
	List<Good> getGoodStatusByUserId(Integer userId);

	@Select("SELECT * FROM good WHERE user_id = #{userId} ORDER BY upload_date DESC;")
	List<Good> getGoodByUserId(Integer userId);

	@Insert("insert into good (name, photo_url, first_type_id, second_type_id, prise, `describe`, user_id, status_id, upload_date, `update`) "
			+ "values (#{name}, #{photoUrl}, #{firstTypeId}, #{secondTypeId}, #{prise}, #{describe}, #{userId}, 1, now(), now())")
	@Options(useGeneratedKeys = true, keyProperty = "id")
	int insterGood(Good good);

	@Update("UPDATE good SET photo_url = #{0}, `update` = now() WHERE id = #{1};")
	int updateGoodPhotoUrl(String photoUrl, Integer goodId);

	@Select("select photo_url from good where id = #{goodId};")
	String getPhotoUrlByGoodId(Integer goodId);

	@Update("UPDATE good SET status_id = #{0}, `update` = now() WHERE id = #{1};")
	int updateGoodStatusId(Integer statusId, Integer goodId);

	@Update("UPDATE good SET name = #{name}, first_type_id = #{firstTypeId}, second_type_id = #{secondTypeId}, prise = #{prise}, `describe` = #{describe} WHERE id = #{id};")
	int updateGood(Good good);

	@Delete("delete from good where id = #{goodId};")
	int deleteGood(Integer goodId);
}
