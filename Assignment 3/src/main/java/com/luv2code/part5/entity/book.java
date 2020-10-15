package com.luv2code.part5.entity;

public class book {
    private String isbn;
    private String title;
    private String author;
    private double prices;

    public book() {
    }

    public book(String isbn, String title, String author, double prices) {
        this.isbn = isbn;
        this.title = title;
        this.author = author;
        this.prices = prices;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public double getPrices() {
        return prices;
    }

    public void setPrices(double prices) {
        this.prices = prices;
    }

    @Override
    public String toString() {
        return "book{" +
                "isbn='" + isbn + '\'' +
                ", title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", prices=" + prices +
                '}';
    }
}
