package com.example.board;

import java.util.Date;

public class BoardVO {
    private int seq;
    private String title;
    private String writer;
    private String username;
    private String publisher;
    private String publication_date;
    private String phone;
    private String price;
    private String content;
    private Date regdate;
    private String genre;
    private String bookCondition;

    private boolean direct;
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPublisher() {
        return publisher;
    }
    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }
    public String getPublication_date() {
        return publication_date;
    }
    public void setPublication_date(String publication_date) {
        this.publication_date = publication_date;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getPrice() {
        return price;
    }
    public void setPrice(String price) {
        this.price = price;
    }
    public int getSeq() {return seq;}
    public void setSeq(int seq) {this.seq = seq;}
    public String getTitle() {return title;}
    public void setTitle(String title) {this.title = title;}
    public String getWriter() {return writer;}
    public void setWriter(String writer) {this.writer = writer;}
    public String getContent() {return content;}
    public void setContent(String content) {this.content = content;}
    public Date getRegdate() {return regdate;}
    public void setRegdate(Date regdate) {this.regdate = regdate;}

    public String getGenre() {return genre;}

    public void setGenre(String genre) {this.genre = genre;}
    public boolean isDirect() {
        return direct;
    }

    public void setDirect(boolean direct) {
        this.direct = direct;
    }
    public String getBookCondition() {
        return bookCondition;
    }

    public void setBookCondition(String bookCondition) {
        this.bookCondition = bookCondition;
    }

}
