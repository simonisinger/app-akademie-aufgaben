void main(){
  double orderValue = 30.45;
  double distance = 6.7;
  bool rushHour = false;
  bool isRaining = true;
  int orderSize = 2;

  double deliveryCosts;
  switch (distance) {
    case > 10.0:
      deliveryCosts = 5;
      break;
    case <= 10.0 && > 5.0:
      deliveryCosts = 3.5;
      break;
    case <= 5.0:
      deliveryCosts = 2.5;
      break;
    default:
      deliveryCosts = 0;
  }

  if (isRaining) {
    deliveryCosts += 1.5;
  }

  if (rushHour) {
    deliveryCosts += 2;
  }

  if (distance > 5.0) {
    deliveryCosts += (distance - 5).ceil() * 0.3;
  }

  deliveryCosts = (((orderValue * 0.4) < deliveryCosts ? orderValue * 0.4 : deliveryCosts) / 10).ceilToDouble() * 10;

  if (orderValue < 15) {
    orderValue += 5;
  }

  switch (orderSize) {
    case >= 8:
      orderValue -= 2;
      break;
    case >= 5:
      orderValue -= 1;
      break;
    case >= 3:
      orderValue -= 0.5;
      break;
  }

  print(deliveryCosts > 10.0 ? 'Premium Lieferung' :
  deliveryCosts >= 5.0 && deliveryCosts <= 10.0 ? 'Standardlieferung' : 'Günstige Lieferung');
}