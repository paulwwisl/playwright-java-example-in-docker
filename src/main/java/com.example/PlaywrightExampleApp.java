package com.example;

import com.microsoft.playwright.*;
import java.nio.file.Paths;

public class PlaywrightExampleApp {
  public static void main(String[] args) {
    try (Playwright playwright = Playwright.create()) {
      Browser browser = playwright.chromium().launch(); // Page.pdf only supported in headless Chromium
      Page page = browser.newPage();
      page.navigate("https://playwright.dev/");
      // https://playwright.dev/java/docs/api/class-page#page-pdf
      page.pdf(new Page.PdfOptions().setPath(Paths.get("example.pdf")));
      page.close();
    }
  }
}