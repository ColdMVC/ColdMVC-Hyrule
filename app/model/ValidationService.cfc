/**
 * @singleton
 * @setupMethod setup
 */
component accessors="true" {

	/**
	 * @inject coldmvc
	 */
	property config;

	public any function init() {

		variables.config = {};

		return this;

	}

	public void function setup() {

		variables.hyrule = new hyrule.system.core.Hyrule(variables.config);

	}

	public any function validate(required any target, string context="*", string locale=""){

		return variables.hyrule.validate(arguments.target, arguments.context, arguments.locale);

	}

}