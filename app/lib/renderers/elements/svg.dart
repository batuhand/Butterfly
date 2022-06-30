part of '../renderer.dart';

class SvgRenderer extends Renderer<SvgElement> {
  DrawableRoot? svgRoot;

  SvgRenderer(super.element, [this.svgRoot]);

  @override
  void build(Canvas canvas, Size size, CameraTransform transform,
      [bool foreground = false]) {
    if (svgRoot == null) {
      // Render placeholder
      final paint = Paint()
        ..color = Colors.grey
        ..style = PaintingStyle.fill;
      canvas.drawRect(rect, paint);
      return;
    }
    svgRoot?.clipCanvasToViewBox(canvas);
    svgRoot?.draw(canvas, rect);
  }

  @override
  void buildSvg(XmlDocument xml, AppDocument document, Rect viewportRect) {
    if (!rect.overlaps(rect)) return;
    // Create data url
    final data = utf8.encode(element.data);
    final encoded = base64Encode(data);
    final dataUrl = 'data:image/svg+xml;base64,$encoded';
    // Create image
    xml.getElement('svg')?.createElement('image', attributes: {
      'x': '${rect.left}px',
      'y': '${rect.top}px',
      'width': '${rect.width}px',
      'height': '${rect.height}px',
      'xlink:href': dataUrl,
      'mask': 'url(#eraser-mask)',
    });
  }

  @override
  FutureOr<void> setup(AppDocument document) async {
    svgRoot = await svg.fromSvgString(element.data, element.data);
    super.setup(document);
  }

  @override
  Rect get rect {
    final constraints = element.constraints;
    if (constraints is ScaledElementConstraints) {
      final scale = constraints.scale <= 0 ? 1 : constraints.scale;
      return Rect.fromLTWH(
          element.position.dx,
          element.position.dy,
          (element.width * scale).toDouble(),
          (element.height * scale).toDouble());
    } else if (constraints is FixedElementConstraints) {
      var height = constraints.height;
      var width = constraints.width;
      if (height <= 0) height = element.height.toDouble();
      if (width <= 0) width = element.width.toDouble();
      return Rect.fromLTWH(
          element.position.dx, element.position.dy, width, height);
    } else if (constraints is DynamicElementConstraints) {
      var width = constraints.width;
      var height = constraints.height;
      final ratio = constraints.aspectRatio;
      if (ratio != 0) {
        if (width <= 0) width = height * ratio;
        if (height <= 0) height = width / ratio;
      }
      if (constraints.includeArea) {
        final areaRect = area?.rect;
        final rightArea = areaRect?.right ?? 0;
        final right = element.position.dx + element.width;
        width = min(rightArea, right) - element.position.dx;
        final bottomArea = areaRect?.bottom ?? 0;
        final bottom = element.position.dy + element.height;
        height = min(bottomArea, bottom) - element.position.dy;
      }
      if (height <= 0) height = element.height.toDouble();
      if (width <= 0) width = element.width.toDouble();
      return Rect.fromLTWH(
          element.position.dx, element.position.dy, width, height);
    } else {
      return Rect.fromLTWH(element.position.dx, element.position.dy,
          element.width.toDouble(), element.height.toDouble());
    }
  }

  @override
  SvgElement move(Offset position) => element.copyWith(
      position: position - Offset(rect.width / 2, rect.height / 2));
}