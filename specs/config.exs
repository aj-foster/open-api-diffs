# Configuration for code generation examples
#
# If configuration is necessary to test a specification, please add a new
# configuration profile with the same name as the specification's filename
# (use underscores instead of dashes; etc.).
#
# Please only add minimal profiles as necessary.
#
import Config

config :oapi_generator,
  default: [],
  github: [
    naming: [
      group: [
        Actions,
        Actions.ReviewCustomGates,
        Actions.Runner,
        Actions.Workflow,
        AdvancedSecurity,
        Alert,
        App,
        Branch,
        Check,
        Classroom,
        CodeOfConduct,
        CodeScanning,
        Codespace,
        Commit,
        Content,
        Copilot,
        Dependabot,
        Dependabot.Alert,
        DependencyGraph,
        Deployment,
        Gist,
        Git,
        Hook,
        Installation,
        Interaction,
        Interaction.Limit,
        Issue,
        License,
        Marketplace,
        Organization,
        Organization.ProgrammaticAccessGrant,
        Pages,
        PrivateVulnerabilityReport,
        Project,
        ProtectedBranch,
        PullRequest,
        RateLimit,
        Reaction,
        Release,
        Repository,
        Repository.Advisory,
        Repository.Rule.Set.Conditions,
        Repos,
        Runner,
        SCIM,
        SecretScanning,
        Team,
        Timeline,
        User,
        Webhook,
        Webhook.Config
      ],
      merge: [
        {~r/^Full/, ""},
        {~r/Full$/, ""},
        {~r/^Minimal/, ""},
        {~r/Minimal$/, ""},
        {~r/^Scoped/, ""},
        {~r/^Simple/, ""},
        {~r/Simple$/, ""},
        {"PrivateUser", "User"},
        {"PublicUser", "User"}
      ],
      rename: [
        {~r/^Codespaces/, "Codespace"},
        {~r/^Timeline([^\.].*)$/, "Timeline.\\1"},
        {~r/^([A-Za-z]+)IssueEvent$/, "Issue.Event.\\1"},
        {"GitignoreTemplate", "GitIgnoreTemplate"},
        {"Integration", "App"},
        {"Job", "Actions.Job"},
        {~r/Oidc/, "OIDC"},
        {~r/Page([A-Z])/, "Pages\\1"},
        {~r/RepositoryRule([A-Z])/, "RepositoryRule.\\1"},
        {~r/(Org|Repository)Ruleset([A-Z])/, "\\1Ruleset.\\2"},
        {"ReviewCustomGates", "Actions.ReviewCustomGates"},
        {~r/^Runner/, "Actions.Runner"},
        {~r/^Scim/, "SCIM"},
        {~r/^Ssh/, "SSH"},
        {~r/^Workflow/, "Actions.Workflow"}
      ]
    ],
    output: [
      base_module: GitHub,
      extra_fields: [__info__: :map],
      location: "lib/",
      operation_subdirectory: "operations/",
      schema_subdirectory: "schemas/",
      schema_use: GitHub.Encoder,
      types: [
        error: {GitHub.Error, :t}
      ]
    ]
  ]
