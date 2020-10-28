Before do
  page.current_window.resize_to(1440, 900)
end

After do
  shot = page.save_screenshot("reports/temp_shot.png")
  Allure.add_attachment(
    name: "Screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(shot),
  )
end
