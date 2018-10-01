After do |scenario|
    d = Time.now
    screenshot =  "features/screenshots/#{scenario.name}_#{d.strftime("%d-%m")}.png"
    page.save_screenshot(screenshot)
    tempimg = File.open(screenshot, "rb")
    encoded_img = Base64.encode64(tempimg.read)
    embed("data:image/png;base64,#{encoded_img}",'image/png', "Screenshot Error: #{screenshot}")
    tempimg.close       
end