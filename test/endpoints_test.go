package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestDMSEndpoint(t *testing.T) {
	t.Parallel()

	terraformOptions := &terraform.Options{
		TerraformDir: "../examples/endpoints",
		Upgrade:      true,
	}

	defer terraform.Destroy(t, terraformOptions)
	terraform.InitAndApply(t, terraformOptions)
}
