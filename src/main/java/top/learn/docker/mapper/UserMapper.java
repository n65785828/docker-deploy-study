package top.learn.docker.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import top.learn.docker.entity.User;

@Mapper
public interface UserMapper {
    @Select("select * from user where id = #{id}")
    User findById(String id);
}
