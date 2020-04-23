# Convert a one-line certificate string to a pem file

Reverse of the activity 01-Flatten-PEM

## Usage

```sh
cat input.txt | php flat2pem.php > output.pem
```

### Get certificate details for the one-line certificate string

```sh
cat input.txt | php flat2pem.php | openssl x509 -text -noout
```
