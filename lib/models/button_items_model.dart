class PrimaryButtonItems {
  final String label;
  final Function onButtonTap;
  final bool isSecondaryButton;
  final bool isButtonEnabled;

  PrimaryButtonItems(this.label, this.onButtonTap,
      {this.isSecondaryButton = false, this.isButtonEnabled = true});
}
