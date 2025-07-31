object Twofer {
  def twofer(name: String = null): String = {
    val resolvedName = name match {
      case null => "you"
      case s => s
    }
    "One for " + resolvedName + ", one for me."
  }
}
