After do |scenario|
    screenshot = "#{scenario.name}"
    @browser.driver.save_screenshot screenshot
    embed("#{screenshot}_image_png.png")
end