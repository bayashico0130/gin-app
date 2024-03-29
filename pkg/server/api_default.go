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

import (
	"github.com/gin-gonic/gin"
)

type Api interface {
	Index(c *gin.Context)
	AddPet(c *gin.Context)
	DeletePet(c *gin.Context)
	FindPetById(c *gin.Context)
	FindPets(c *gin.Context)
}
