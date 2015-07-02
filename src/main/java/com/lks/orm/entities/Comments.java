package com.lks.orm.entities;

import com.lks.core.enums.RecStatus;

/**
 * Created by lokkur on 6/19/2015.
 */
public class Comments {

    private int commentId;
    private Document document;
    private String commentedBy;
    private String comments;
    private RecStatus state;

    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    public Document getDocument() {
        return document;
    }

    public void setDocument(Document document) {
        this.document = document;
    }

    public String getCommentedBy() {
        return commentedBy;
    }

    public void setCommentedBy(String commentedBy) {
        this.commentedBy = commentedBy;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public RecStatus getState() {
        return state;
    }

    public void setState(RecStatus state) {
        this.state = state;
    }
}
