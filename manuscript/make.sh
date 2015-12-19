
#!/bin/bash
echo "The production of pibook starts now, go grab a tea, it might take a while"
echo


echo "preparing docx files for each chapter and a combined one, by the way, are you still using microsoft word?!"
echo
pandoc -s -S pi-ch01.md -o /Users/choko/Documents/production/pibook-gr/docx/pi-ch01.docx
pandoc -s -S pi-ch02.md -o /Users/choko/Documents/production/pibook-gr/docx/pi-ch02.docx
pandoc -s -S pi-ch03.md -o /Users/choko/Documents/production/pibook-gr/docx/pi-ch03.docx
pandoc -s -S pi-ch04.md -o /Users/choko/Documents/production/pibook-gr/docx/pi-ch04.docx
pandoc -s -S pi-ch05.md -o /Users/choko/Documents/production/pibook-gr/docx/pi-ch05.docx
pandoc -s -S pi-ch06.md -o /Users/choko/Documents/production/pibook-gr/docx/pi-ch06.docx
pandoc -s -S pi-pre.md -o /Users/choko/Documents/production/pibook-gr/docx/pi-pre.docx
pandoc -s -S pi-intro.md -o /Users/choko/Documents/production/pibook-gr/docx/pi-intro.docx
pandoc -s -S pi-ax00.md -o /Users/choko/Documents/production/pibook-gr/docx/pi-ax00.docx
pandoc -s -S pi-ax01.md -o /Users/choko/Documents/production/pibook-gr/docx/pi-ax01.docx
pandoc -s -S pi-ax02.md -o /Users/choko/Documents/production/pibook-gr/docx/pi-ax02.docx
pandoc -s -S pi-front.md -o /Users/choko/Documents/production/pibook-gr/docx/pi-front.docx
pandoc -S -o /Users/choko/Documents/production/pibook-gr/docx/pibook.docx pi-front.md pi-ax00-acro.md pi-pre.md pi-intro.md pi-ch01.md pi-ch02.md pi-ch03.md pi-ch04.md pi-ch05.md pi-ch06.md pi-ax00.md pi-ax01.md pi-ax02.md

echo "preparing indesign files for each chapter, now, i am getting really skeptical about your software tools..."
echo
pandoc -s -f markdown -t icml -o /Users/choko/Documents/production/pibook-gr/indesign/pi-ch01.icml pi-ch01.md
pandoc -s -f markdown -t icml -o /Users/choko/Documents/production/pibook-gr/indesign/pi-ch02.icml pi-ch02.md
pandoc -s -f markdown -t icml -o /Users/choko/Documents/production/pibook-gr/indesign/pi-ch03.icml pi-ch03.md
pandoc -s -f markdown -t icml -o /Users/choko/Documents/production/pibook-gr/indesign/pi-ch04.icml pi-ch04.md
pandoc -s -f markdown -t icml -o /Users/choko/Documents/production/pibook-gr/indesign/pi-ch05.icml pi-ch05.md
pandoc -s -f markdown -t icml -o /Users/choko/Documents/production/pibook-gr/indesign/pi-ch06.icml pi-ch06.md
pandoc -s -f markdown -t icml -o /Users/choko/Documents/production/pibook-gr/indesign/pi-pre.icml pi-pre.md
pandoc -s -f markdown -t icml -o /Users/choko/Documents/production/pibook-gr/indesign/pi-intro.icml pi-intro.md
pandoc -s -f markdown -t icml -o /Users/choko/Documents/production/pibook-gr/indesign/pi-ax00.icml pi-ax00.md
pandoc -s -f markdown -t icml -o /Users/choko/Documents/production/pibook-gr/indesign/pi-ax01.icml pi-ax01.md
pandoc -s -f markdown -t icml -o /Users/choko/Documents/production/pibook-gr/indesign/pi-ax02.icml pi-ax02.md
pandoc -s -f markdown -t icml -o /Users/choko/Documents/production/pibook-gr/indesign/pi-front.icml pi-front.md

echo "preparing pdf files for each chapter, this might take more than the previous steps"
echo
pandoc pi-ch01.md --latex-engine=lualatex --variable mainfont=Georgia -o /Users/choko/Documents/production/pibook-gr/pdf/pi-ch01.pdf
pandoc pi-ch02.md --latex-engine=lualatex --variable mainfont=Georgia -o /Users/choko/Documents/production/pibook-gr/pdf/pi-ch02.pdf
pandoc pi-ch03.md --latex-engine=lualatex --variable mainfont=Georgia -o /Users/choko/Documents/production/pibook-gr/pdf/pi-ch03.pdf
pandoc pi-ch04.md --latex-engine=lualatex --variable mainfont=Georgia -o /Users/choko/Documents/production/pibook-gr/pdf/pi-ch04.pdf
pandoc pi-ch05.md --latex-engine=lualatex --variable mainfont=Georgia -o /Users/choko/Documents/production/pibook-gr/pdf/pi-ch05.pdf
pandoc pi-ch06.md --latex-engine=lualatex --variable mainfont=Georgia -o /Users/choko/Documents/production/pibook-gr/pdf/pi-ch06.pdf
pandoc pi-pre.md --latex-engine=lualatex --variable mainfont=Georgia -o /Users/choko/Documents/production/pibook-gr/pdf/pi-pre.pdf
pandoc pi-intro.md --latex-engine=lualatex --variable mainfont=Georgia -o /Users/choko/Documents/production/pibook-gr/pdf/pi-intro.pdf
pandoc pi-ax00.md --latex-engine=lualatex --variable mainfont=Georgia -o /Users/choko/Documents/production/pibook-gr/pdf/pi-ax00.pdf
pandoc pi-ax01.md --latex-engine=lualatex --variable mainfont=Georgia -o /Users/choko/Documents/production/pibook-gr/pdf/pi-ax01.pdf
pandoc pi-ax02.md --latex-engine=lualatex --variable mainfont=Georgia -o /Users/choko/Documents/production/pibook-gr/pdf/pi-ax02.pdf
pandoc pi-front.md --latex-engine=lualatex --variable mainfont=Georgia -o /Users/choko/Documents/production/pibook-gr/pdf/pi-front.pdf

echo "i did my best, but there might be errors above, if there are no errors, then grab a beer and celebrate"
echo
