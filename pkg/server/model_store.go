/*
 * Swagger Petstore
 *
 * A sample API that uses a petstore as an example to demonstrate features in the OpenAPI 3.0 specification
 *
 * API version: 1.0.0
 * Contact: apiteam@swagger.io
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package chimera

type Store struct {
	Id int64 `json:"id"`

	Name string `json:"name,omitempty"`

	Address string `json:"address,omitempty"`
}
