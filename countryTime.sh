cat git.csv |grep "^\"https:" |awk -F'\",\"' '{ print $29,"!_!" $26}'|tr -d ";"|sed "s/!_!/;/g;s/,/ /g;s/\// /g"|tr '[:upper:]' '[:lower:]'|sed 's/\./ /g' > tmp.csv

cat tmp.csv |grep -v ";$"|sed -e 's/ AL$\| AK$\| AZ$\| AR$\| CA$\| CO$\| CT$\| DE$\| FL$\| GA$\| HI$\| ID$\| IL$\| IN$\| IA$\| KS$\| KY$\| LA$\| ME$\| MD$\| MA$\| MI$\| MN$\| MS$\| MO$\| MT$\| NE$\| NV$\| NH$\| NJ$\| NM$\| NY$\| NC$\| ND$\| OH$\| OK$\| OR$\| PA$\| RI$\| SC$\| SD$\| TN$\| TX$\| UT$\| VT$\| VA$\| WA$\| WV$\| WI$\| WY$\|U.S.A.$\|Texas$\|New York$/usa/i;s/Moscow/russia/i;s/Paris/france/i;s/Oslo/norway/i;s/Madrid/spain/i;s/London/uk/i;s/Kingdom/uk/i;s/bay area/usa/i;s/boston/usa/i;s/california/usa/i;s/beijing/china/i;s/francisco/usa/i;s/seattle/usa/i;s/bay area/usa/i;s/taipei/china/i;s/stockholm/sweden/i;s/shenzhen/china/i;s/sheffield/uk/i;s/shanghai/china/i;s/saint-petersburg/russia/i;s/michigan/usa/i;s/kahovka/ukraine/i;s/janeiro/brazil/i;s/helsinki/finland/i;s/hamburg/germany/i;s/teborg/ sweden/i;s/ferrara/italia/i;s/deutschland/germany/i;s/copenhagen/denmark/i;s/cambridge/uk/i;s/brasil/brazil/i;s/bilbao/spain/i;s/berlin/germany/i;s/barcelona/spain/i;s/bangalore/india/i;s/amsterdam/netherlands/i;s/z.rich/switzerland/i;s/wuhan/china/i;s/wien/austria/i;s/vladivostok/russia/i;;s/vienna/austria/i;s/vermont/usa/i;s/vegas/usa/i;s/varna/bulgaria/i;s/valley/usa/i;s/sydney/australia/i;s/states/usa/i;s/stanford/usa/i;s/rome/italy/i;s/italia/italy/i;s/rotterdam/netherlands/i;s/prague/czech/i;s/oxford/uk/i;s/nantes/france/i;s/hangzhou/china/i;s/glasgow/uk/i;s/geneva/switzerland/i;s/geneve/switzerland/i;s/edinburgh/netherlands/i;s/derbyshire/uk/i;s/delhi/india/i;s/cologne/germany/i;s/chennai/india/i;s/chengdu/china/i;s/cardiff/uk/i;s/brisbane/australia/i;s/auckland/zealand/i;s/bonn/germany/i;s/new york city/usa/i;s/mexico city/mexico/i;s/czech republic/czech/i;s/kyiv/ukraine/i;s/toulouse/france/i;s/eindhoven/netherlands/i;s/tourcoing/france/i;s/seoul/korea/i;s/yekaterinburg/russia/i;s/utah/usa/i;s/oregon/usa/i;s/nyc/usa/i;s/angeles/usa/i;s/england/uk/i;s/ohio/usa/i;s/colorado/usa/i;s/ontario/canada/i;s/massachusetts/usa/i;s/montreal/canada/i;s/melbourne/australia/i;s/florida/usa/i;s/diego/usa/i;s/philadelphia/usa/i;s/vancouver/canada/i;s/virginia/usa/i;s/paulo/brazil/i;s/jersey/usa/i;s/minnesota/usa/i;s/munich/germany/i;s/brooklyn/usa/i;s/minsk/belarus/i;s/wisconsin/usa/i;s/indiana/usa/i;s/lyon/france/i;s/mumbai/india/i;s/tokyo/japan/i;s/ dc$\| ny$/usa/i;s/toronto/canada/i;s/ $bc\| on$/canada/i;s/ us$/usa/i;s/warsaw/poland/i;s/pennsylvania/usa/i;s/altanta/usa/i;s/texas$/usa/i;s/missouri/usa/i;s/sunnyvale/usa/i;s/ottawa/canada/i;s/ federation//i;s/budapest/hungary/i;s/hyderabad/india/i;s/illinois/usa/i;s/carolina/usa/i;s/adelaide/australia/i;s/istanbul/turkey/i;s/kiev/ukraine/i;s/arizona/usa/i;s/ bc$/canada/i;'|tr -d "'"|grep "^2012"|sed 's/\(\|\)//g'|sed 's/\#//g'|sed 's/[ ][ ]*$//g'|grep -v ";$">tmp2.csv