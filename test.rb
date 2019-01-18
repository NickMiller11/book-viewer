def in_paragraphs(text)
  text.split("\n\n").map do |paragraph|
    paragraph
  end
end

text = File.read("data/chp1.txt")

formatted_text = in_paragraphs(text)

results = []

formatted_text.each do |paragraph|
  if paragraph.include?("abhorrent")
    results << paragraph
  end
end

p results