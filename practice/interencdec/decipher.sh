cat enc_flag | base64 -d | cut -d "'" -f2 | base64 -d | tr H-ZABCDEFGh-zabcdefg A-STUVWXYZa-stuvwxyz
