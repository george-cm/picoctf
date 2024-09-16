enc_file=$(<"$1")
while true
do
	enc_file="$(base64 -d <<< $enc_file)"
	if [[ $enc_file == *"picoCTF{"* ]]; then
		echo $enc_file
		break
	fi
done
