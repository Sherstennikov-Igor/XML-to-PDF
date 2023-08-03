import lxml.etree as et
import pdfkit

# Настройка путей
path_xml = r'D:\PZ_V1\XMLtoPDF\PZ_TEST_V1.xml'                              # Файл XML для визуализации
path_xsl = r'D:\PZ_V1\XMLtoPDF\explanatorynote-01-03.xsl'                   # Файл таблицы стилей
path_htmltopdf = r'D:\PZ_V1\XMLtoPDF\HTMLtoPDF\bin\wkhtmltopdf.exe'         # Файл генератора PDF из HTML

# Формирование HTML
xml_file = et.parse(path_xml)
xsl_file = et.parse(path_xsl)
transform = et.XSLT(xsl_file)
transformed = transform(xml_file)
transformed.write("out.html", method="html")    # Сериализация в файл

# Формирование PDF
config = pdfkit.configuration(wkhtmltopdf=path_htmltopdf)
pdfkit.from_file("out.html", "out.pdf", configuration=config)
