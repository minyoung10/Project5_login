package com.example.board;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

class BoardRowMapper implements RowMapper<BoardVO> {
    @Override
    public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        BoardVO one = new BoardVO();
        one.setSeq(rs.getInt("seq"));
        one.setTitle(rs.getString("title"));
        one.setWriter(rs.getString("writer"));
        one.setRegdate(rs.getDate("regdate"));
        one.setContent(rs.getString("content"));

        one.setPhone(rs.getString("phone"));
        one.setPrice(rs.getString("price"));
        one.setUsername(rs.getString("username"));
        one.setPublisher(rs.getString("publisher"));
        one.setPublication_date(rs.getString("publication_date"));
        one.setGenre(rs.getString("genre"));
        one.setDirect(rs.getBoolean("direct"));
        one.setBookCondition(rs.getString("bookCondition"));
        return one;
    }

}
