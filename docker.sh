docker build -t my-qr-app .

docker run -d --name qr-generator \
  -e QR_DATA_URL='https://github.com/ofelizestevez' \
  -e QR_CODE_DIR='qr_codes' \
  -e QR_CODE_FILENAME='exampleQR.png' \
  -e FILL_COLOR='white' \
  -e BACK_COLOR='black' \
  -v ./qr_codes:/app/qr_codes \
  my-qr-app

  docker rm qr-generator