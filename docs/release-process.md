# RetailHub Release Process

## Branching Rules

- `main` is the central and stable branch.
- Developers should create a separate branch for each task.
- Do not make direct changes to `main`.
- Use meaningful branch names.

## Pull Request Rules

1. Complete the assigned work on a separate branch.
2. Commit the changes with a clear commit message.
3. Push the branch to GitHub.
4. Create a Pull Request targeting `main`.
5. Review the changes.
6. Merge the Pull Request after approval.

## Merge Rules

- Pull Requests should be reviewed before merging.
- Merge conflicts must be resolved before merging.
- Test the changes after resolving conflicts.
- Keep the `main` branch stable.

## Release Rules

1. Complete the development work on a separate branch.
2. Push the branch to the central repository.
3. Create a Pull Request to `main`.
4. Review and approve the Pull Request.
5. Resolve conflicts if required.
6. Merge the approved Pull Request.
7. Verify the changes in `main`.

## Conflict Resolution

When a merge conflict occurs:

1. Identify the conflicting file.
2. Open the file containing the conflict markers.
3. Decide which changes should be kept.
4. Remove the conflict markers.
5. Save the file.
6. Stage the resolved file.
7. Commit the resolution.
8. Push the changes.