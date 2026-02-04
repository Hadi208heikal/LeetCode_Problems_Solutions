class Solution {
  List<int> constructRectangle(int area) {
    List<int> result = [area, 1];
    for (int i = 2; i < area; i += 1) {
      final double length = area / i;
      final int flattedLength = length.floor();
      if (flattedLength.roundToDouble() == length) {
        if (flattedLength >= i) {
          result[0] = flattedLength;
          result[1] = i;
        } else {
          break;
        }
      }
    }
    return result;
  }
}