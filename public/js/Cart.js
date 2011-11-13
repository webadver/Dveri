var Cart = Abstract.inheritTo(
	{

		__constructor : function(oFormWidget) {

			this.oFormWidget = oFormWidget;
			this.aInputWidgets = this.oFormWidget.getChildren()[0].getChildren();
			this.oSumElement = Common.Dom.getElementsByClassName(oFormWidget.oElement, 'sum', 'th')[0];
			this.oQuantityElement = Common.Dom.getElementsByClassName(oFormWidget.oElement, 'quantity', 'th')[1];
			this.aPrices = this.extractPriceFromCells();

			var oThis = this;

			ZForms.attachObserver(
				ZForms.EVENT_TYPE_ON_CHANGE,
				function() {

					oThis.recalculate();

				},
				oFormWidget,
				true
				);

		},

		extractPriceFromCells : function() {

			var
				aPriceElements = Common.Dom.getElementsByClassName(this.oFormWidget.oElement, 'price', 'td'),
				aResult = [],
				i = 0
				;

			while(aPriceElements[i]) {
				aResult.push(parseFloat(aPriceElements[i++].innerHTML.replace(/(\s|&nbsp;|\u00A0)/g, '')));
			}

			return aResult;

		},

		recalculate : function() {

			var
				iQuantity = 0,
				dSum = 0,
				i = 0,
				oWidget,
				iValue
				;
			while(oWidget = this.aInputWidgets[i]) {

				iValue = oWidget.getValue().isEmpty()? 0 : oWidget.getValue().get();
				iQuantity += iValue;
				dSum += iValue * this.aPrices[i++];

			}

			this.oSumElement.innerHTML = dSum.formatNumber();
			this.oQuantityElement.innerHTML = iQuantity.formatNumber();

		}

    }
    );

ZForms.attachObserver(
	ZForms.EVENT_TYPE_ON_INIT,
	function() {

		new Cart(ZForms.getFormById('form-cart'));

	}
    );