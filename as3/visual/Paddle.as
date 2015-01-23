package visual {
	/* Доска */
	import flash.display.Sprite;

	public class Paddle extends Sprite {

		public function Paddle () {
			/* Отрисовка */
			graphics.beginFill(0x0077FF);
			graphics.drawRect(-5, -35, 10, 70);
			graphics.endFill();
		}
	}
}