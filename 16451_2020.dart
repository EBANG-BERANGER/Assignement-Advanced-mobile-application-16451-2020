// B2 and D2 done by ENGONGA EBANG Achille Beranger reg number:16451/2020
// by EEAB
void main() {
  print('$fullName has ${countVowels(fullName)} vowels');
  String phone = '0788123456';
  int totalFees = 0;
  int i = 1;
  while (i <= D + 3) {
    int amount = i * 4000 + T * 100;
    int fee = momoFee(amount);
    totalFees += fee;
    print('Receipt $i | $amount RWF | fee $fee RWF | to ${maskPhone(phone)}');
    i++;
  }
  print('Total fees: $totalFees RWF');
}
const int D = 1;
const int T = 51;
const String fullName = 'ENGONGA EBANG Achille Beranger';

// by EEAB
int countVowels(String text) {
  String normalized = text.toLowerCase();
  int count = 0, i = 0;
  while (i < normalized.length) {
    if ('aeiou'.contains(normalized[i])) count++;
    i++;
  }
  return count;
}

// by EEAB
int momoFee(int amount) {
  if (amount <= 0) return -1;
  if (amount <= 1000) return 20;
  if (amount <= 10000) return 100;
  if (amount <= 150000) return 250;
  return 1500;
}

// by EEAB
String maskPhone(String phone) {
  if (phone.length != 10) return 'INVALID';
  return phone.substring(0, 3) + '*****' + phone.substring(8);
}
