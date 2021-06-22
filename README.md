# Save Spawn Data Container Action

This action is part of a suite of Github Actions for [Spawn](https://spawn.cc), a service for provisioning cloud hosted, ephemeral databases for development and CI.

See the [Spawn docs](https://docs.spawn.cc/cicd/github-actions) for an example workflow that uses this action.

## Inputs

| Name            | Description                                                                           | Default | Required |
| --------------- | ------------------------------------------------------------------------------------- | ------- | -------- |
| dataContainer   | The data container identifier (name, or numeric ID) to save                           | N/A     | Yes      |
| additionalArgs  | Any additional arguments or flags to `spawnctl`. These will be appended to the end    | ''      | No       |

## Outputs

| Name              | Description                                                                           |
| ---------------   | ------------------------------------------------------------------------------------- |
| newRevision       | The new revision created by saving the given data container                           |


## Authentication

**All** operations require the use of a [Spawn access token](https://spawn.cc/docs/spawnctl-accesstoken-create).

This is expected to be provided to all actions through a `SPAWNCTL_ACCESS_TOKEN` environment variable. **This should be provided via a [GitHub Secret](https://docs.github.com/en/actions/reference/encrypted-secrets)**.
