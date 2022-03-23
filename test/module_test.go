package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestExampleSimply(t *testing.T) {
	// retryable errors in terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../examples/simple",
	})

	// after destroy
	defer terraform.Destroy(t, terraformOptions)

	// init apply
	terraform.InitAndApply(t, terraformOptions)

	// output check
	acm := terraform.Output(t, terraformOptions, "arn")
	assert.NotEmpty(t, acm)
}