kubectl -n fah cp fah-worker-789cb575d8-wndkn:/var/lib/fahclient/work/00/logfile_01.txt log.txt >>/dev/null 2>&1
kubectl -n fah cp fah-worker-789cb575d8-wndkn:/var/lib/fahclient/log.txt log1.txt >>/dev/null 2>&1

COLOR='\033[0;32m'
NC='\033[0m'

echo "$COLOR"
echo "********************************************************"
echo "Project Information: FAH Pods on PMK Cluster"
echo "********************************************************"
echo "$NC"
grep Project log.txt
tail -2 log.txt
echo "\n"
project_id=$(grep Project log.txt | awk '{print $2}')


echo "$COLOR"
echo "********************************************************"
echo "Description of the FAH Project"
echo "********************************************************"
echo "$NC"
curl -s https://api.foldingathome.org/project/$project_id | jq . | grep -e "description"

echo "\n"

echo "$COLOR"
echo "********************************************************"
echo "Linking of the User Account to the Project."
echo "********************************************************"
echo "$NC"
curl -s -G https://api.foldingathome.org/user/:$1/stats -d passkey="$2" -d team=2 | jq .
