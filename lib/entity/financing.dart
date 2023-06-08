class Financing {
  final String title; // タイトル
  final String outline; // 概要
  final String target; // 対象者
  final String interest; // 金利
  final String borrowingLimit; // 借入限度額
  final String termOfRedemption; // 償還期限
  final String remarks; // 備考
  final String url; // 参考url

  Financing(this.title, this.outline, this.target, this.interest,
      this.borrowingLimit, this.termOfRedemption, this.remarks, this.url);
}
