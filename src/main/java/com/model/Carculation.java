package com.model;

public class Carculation {

	private double result = 0;

	public double sum(double num1, double num2) {
		result = num1 + num2;

		return result;
	}

	public double multiply(double num1, double num2) {
		result = num1 * num2;

		return result;
	}

	public double subtraction(double num1, double num2) {
		result = num1 - num2;

		return result;
	}

	public double division(double num1, double num2) {
		result = num1 / num2;

		return result;
	}

	public double raiz(double num1) {

		result = Math.sqrt(num1);

		return result;
	}

	public double percent(double num1, double num2) {
		result = num1 * num2;
		result = result / 100;

		return result;
	}

	public String deleteZero(double num1) {
		String resultt = String.valueOf(num1);
		int v = resultt.length();
		String r = resultt.substring(v - 1, v);

		if (r.equals("0")) {
			r = resultt.substring(0, v - 2);

		} else if (!r.equals("0")) {
			if (v > 12) {
				r = resultt.substring(0, 12);
			} else {
				r = resultt;
			}
		}

		return r;
	}
}
