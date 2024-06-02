port=12056
server="spider.foi.hr"
echo "GET"
curl -X GET "http://$server:$port/baza/korisnici/"
echo ""
echo "POST"
curl -X POST "http://$server:$port/baza/korisnici/" -H 'Content-Type: application/json' -d '{"ime":"Test", "prezime":"Test", "lozinka":"123456", "email":"test3@foi.unizg.hr", "korime":"pkos", "adresa":null, "drzava":null, "telefon":null, "tip_korisnika_id":1}'
echo ""
echo "DELETE"
curl -X DELETE "http://$server:$port/baza/korisnici/"
echo ""
echo "PUT"
curl -X PUT "http://$server:$port/baza/korisnici/"
echo ""
echo "GET"
curl -X GET "http://$server:$port/baza/korisnici/pkos"
echo ""
echo "GET prijava tocna"
curl -X POST "http://$server:$port/baza/korisnici/pkos/prijava" -H 'Content-Type: application/json' -d '{"lozinka":"123456"}'
echo ""
echo "GET prijava kriva"
curl -X POST "http://$server:$port/baza/korisnici/pkos/prijava" -H 'Content-Type: application/json' -d '{"lozinka":"12345"}'
echo ""
echo "PUT"
curl -X PUT "http://$server:$port/baza/korisnici/pkos" -H 'Content-Type: application/json' -d '{"ime":"Testnovi", "prezime":"Testnovi", "lozinka":"123456", "email":"test3@foi.unizg.hr", "korime":"pkos", "adresa":null, "drzava":null, "telefon":null'
echo ""
echo "DELETE"
curl -X DELETE "http://$server:$port/baza/korisnici/pkos"
echo ""
echo "POST"
curl -X POST "http://$server:$port/baza/korisnici/pkos"
echo ""
