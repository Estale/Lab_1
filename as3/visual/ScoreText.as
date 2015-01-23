package visual {
	/* Текст количества очков игрока и соперника */
	import flash.display.Sprite;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;
	import flash.text.AntiAliasType;
	import flash.text.TextField;

	public class ScoreText extends Sprite {

		/* Выравнивание текста */
		public static var ALIGN_LEFT = "left";
		public static var ALIGN_RIGHT = "right";

		/* Текстовое поле */
		var textField:TextField;

		public function ScoreText (aligment:String) {

			/* Шрифт */
			var format = new TextFormat();
			format.font = "Arial";
			format.size = 15;
			if(aligment == ALIGN_LEFT)
				format.align = TextFormatAlign.LEFT;
			else
				format.align = TextFormatAlign.RIGHT;

			/* Создание поля */
			textField = new TextField();
			textField.textColor = 0x001122;
			textField.selectable = textField.border = textField.embedFonts = textField.wordWrap = false;
			textField.width = 300;
			textField.height = 25;
			textField.text = "";
			textField.defaultTextFormat = format;
			addChild(textField);
		}

		/* Свойство текста только для записи */
		public function set text (value:String) {
			textField.text = value;
		}
	}
}