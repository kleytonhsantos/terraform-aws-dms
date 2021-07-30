package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestDMSSubnetGroups(t *testing.T) {
	t.Parallel()

	terraformOptions := &terraform.Options{
		TerraformDir: "../examples/subnet_groups/",
		Upgrade:      true,
	}

	defer terraform.Destroy(t, terraformOptions)
	terraform.InitAndApply(t, terraformOptions)
}
