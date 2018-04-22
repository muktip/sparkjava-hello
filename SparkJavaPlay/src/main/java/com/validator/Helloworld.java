package com.validator;

import static spark.Spark.get;
import static spark.Spark.post;

import java.util.Base64;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class Helloworld {

	public static void main(final String[] args) {
		get("/hello/:name", (request, response) -> {
			return "Hello " + request.params(":name");
		});

	}
}
