package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestDMSComplete(t *testing.T) {
	t.Parallel()

	terraformOptions := &terraform.Options{
		TerraformDir: "../examples/complete",
		Upgrade:      true,
	}

	defer terraform.Destroy(t, terraformOptions)
	terraform.InitAndApply(t, terraformOptions)
}
