set -e

cd markdown-parse
rm results.txt
make MarkdownParse.class
bash script.sh > "results.txt"

cd ../instructorMDParse
rm results.txt
make MarkdownParse.class
bash script.sh > results.txt

cd ../cse15l-lab-reports
rm differences.txt
diff ../markdown-parse/results.txt ../instructorMDParse/results.txt > differences.txt