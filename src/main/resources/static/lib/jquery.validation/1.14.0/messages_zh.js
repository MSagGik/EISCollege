(function( factory ) {
	if ( typeof define === "function" && define.amd ) {
		define( ["jquery", "../jquery.validate"], factory );
	} else {
		factory( jQuery );
	}
}(function( $ ) {

/*
 * Translated default messages for the jQuery validation plugin.
 * валидация полей
 */
$.extend($.validator.messages, {
	required: "Данное поле является обязательным к заполнению",
	remote: "Пожалуйста, исправьте это поле",
	email: "Пожалуйста, введите действительный адрес электронной почты",
	url: "Пожалуйста, введите корректный адрес",
	date: "Пожалуйста, введите правильную дату",
	dateISO: "Пожалуйста, введите правильную дату (YYYY-MM-DD)",
	number: "Пожалуйста введите правильное число",
	digits: "Введите только цифры",
	creditcard: "Пожалуйста, введите действительный номер кредитной карты",
	equalTo: "Ваш вклад не тот",
	extension: "Пожалуйста, введите допустимый суффикс",
	maxlength: $.validator.format("Вы можете ввести до {0} символов"),
	minlength: $.validator.format("Введите не менее {0} символов"),
	rangelength: $.validator.format("Введите строку длиной от {0} до {1}"),
	range: $.validator.format("Введите значение в диапазоне от {0} до {1}"),
	max: $.validator.format("Пожалуйста, введите значение не больше {0}"),
	min: $.validator.format("Пожалуйста, введите значение больше или равное {0}")
});

}));