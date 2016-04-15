namespace :doc do
  desc 'prepare build'
  task :prebuild do
    Dir.mkdir 'doc_images' unless Dir.exists? 'doc_images'
      Dir.glob("extra/*/*.png").each do |image|
      FileUtils.copy(image, "doc_images/" + File.basename(image))
    end
      Dir.glob("screenshots/*.png").each do |image|
      FileUtils.copy(image, "doc_images/" + File.basename(image))
    end
  end

  desc 'build basic documentation formats'
  task :build => :prebuild do
    puts "Converting to HTML..."
      `bundle exec asciidoctor README.asciidoc`
    puts " -- HTML output at ViatraDoc.html"

    puts "Converting to PDF... (this one takes a while)"
    `bundle exec asciidoctor-pdf -a pdf-stylesdir=./ -a pdf-style=basic README.asciidoc`
    puts " -- PDF  output at ViatraDoc.pdf"
  end

  desc 'clean out generated formats'
  task :clean do
    `rm ViatraDoc.html`
    `rm ViatraDoc.pdf`
    `rm ViatraDoc.pdfmarks`
  end
end
