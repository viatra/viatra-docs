namespace :doc do
  desc 'prepare build'
  task :prebuild do
    Dir.mkdir 'doc_images' unless Dir.exists? 'doc_images'
    Dir.glob("*/*/*.png").each do |image|
      FileUtils.copy(image, "doc_images/" + File.basename(image))
    end
  end

  desc 'build basic documentation formats'
  task :build => :prebuild do
    puts "Converting to HTML..."
      `bundle exec asciidoctor CourseMaterialsDoc.asciidoc`
    puts " -- HTML output at CourseMaterialsDoc.html"

    puts "Converting to PDF... (this one takes a while)"
    `bundle exec asciidoctor-pdf -a pdf-stylesdir=./ -a pdf-style=basic CourseMaterialsDoc.asciidoc`
    puts " -- PDF  output at CourseMaterialsDoc.pdf"
  end

  desc 'clean out generated formats'
  task :clean do
    `rm CourseMaterialsDoc.html`
    `rm CourseMaterialsDoc.pdf`
    `rm CourseMaterialsDoc.pdfmarks`
  end
end
