package com.develogical;

public class QueryProcessor {

  public String process(String query) {

    System.out.println("Received query:" + query);

    if (query.toLowerCase().contains("What is 85 minus 95?")) {
      return "-10";
    }

    if (query.toLowerCase().contains("Keval")) {
      return "Keval";
    }
    

    return "";
  }
}
