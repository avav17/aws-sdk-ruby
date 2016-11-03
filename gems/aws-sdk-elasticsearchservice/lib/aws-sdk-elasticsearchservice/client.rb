# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration::IDENTIFIERS << :elasticsearchservice

module Aws
  module ElasticsearchService
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs

      @identifier = :elasticsearchservice

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::CredentialsConfiguration)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::SignatureV4)
      add_plugin(Aws::Plugins::Protocols::RestJson)

      # @option options [required, Aws::CredentialProvider] :credentials
      #   Your AWS credentials. This can be an instance of any one of the
      #   following classes:
      #
      #   * `Aws::Credentials` - Used for configuring static, non-refreshing
      #     credentials.
      #
      #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
      #     from an EC2 IMDS on an EC2 instance.
      #
      #   * `Aws::SharedCredentials` - Used for loading credentials from a
      #     shared file, such as `~/.aws/config`.
      #
      #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
      #
      #   When `:credentials` are not configured directly, the following
      #   locations will be searched for credentials:
      #
      #   * `Aws.config[:credentials]`
      #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
      #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
      #   * `~/.aws/credentials`
      #   * `~/.aws/config`
      #   * EC2 IMDS instance profile - When used by default, the timeouts are
      #     very aggressive. Construct and pass an instance of
      #     `Aws::InstanceProfileCredentails` to enable retries and extended
      #     timeouts.
      # @option options [required, String] :region
      #   The AWS region to connect to.  The configured `:region` is
      #   used to determine the service `:endpoint`. When not passed,
      #   a default `:region` is search for in the following locations:
      #
      #   * `Aws.config[:region]`
      #   * `ENV['AWS_REGION']`
      #   * `ENV['AMAZON_REGION']`
      #   * `ENV['AWS_DEFAULT_REGION']`
      #   * `~/.aws/credentials`
      #   * `~/.aws/config`
      # @option options [String] :access_key_id
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      # @option options [String] :endpoint
      #   The client endpoint is normally constructed from the `:region`
      #   option. You should only configure an `:endpoint` when connecting
      #   to test endpoints. This should be avalid HTTP(S) URI.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [String] :profile ("default")
      #   Used when loading credentials from the shared credentials file
      #   at HOME/.aws/credentials.  When not specified, 'default' is used.
      # @option options [Integer] :retry_limit (3)
      #   The maximum number of times to retry failed requests.  Only
      #   ~ 500 level server errors and certain ~ 400 level client errors
      #   are retried.  Generally, these are throttling errors, data
      #   checksum errors, networking errors, timeout errors and auth
      #   errors from expired credentials.
      # @option options [String] :secret_access_key
      # @option options [String] :session_token
      # @option options [Boolean] :stub_responses (false)
      #   Causes the client to return stubbed responses. By default
      #   fake responses are generated and returned. You can specify
      #   the response data to return or errors to raise by calling
      #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
      #
      #   ** Please note ** When response stubbing is enabled, no HTTP
      #   requests are made, and retries are disabled.
      # @option options [Boolean] :validate_params (true)
      #   When `true`, request parameters are validated before
      #   sending the request.
      def initialize(*args)
        super
      end

      # @!group API Operations

      # Attaches tags to an existing Elasticsearch domain. Tags are a set of
      # case-sensitive key value pairs. An Elasticsearch domain may have up to
      # 10 tags. See [ Tagging Amazon Elasticsearch Service Domains for more
      # information.][1]
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-awsresorcetagging
      # @option params [required, String] :arn
      #   Specify the `ARN` for which you want to add the tags.
      # @option params [required, Array<Types::Tag>] :tag_list
      #   List of `Tag` that need to be added for the Elasticsearch domain.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_tags({
      #     arn: "ARN", # required
      #     tag_list: [ # required
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue", # required
      #       },
      #     ],
      #   })
      # @overload add_tags(params = {})
      # @param [Hash] params ({})
      def add_tags(params = {}, options = {})
        req = build_request(:add_tags, params)
        req.send_request(options)
      end

      # Creates a new Elasticsearch domain. For more information, see
      # [Creating Elasticsearch Domains][1] in the *Amazon Elasticsearch
      # Service Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains
      # @option params [required, String] :domain_name
      #   The name of the Elasticsearch domain that you are creating. Domain
      #   names are unique across the domains owned by an account within an AWS
      #   region. Domain names must start with a letter or number and can
      #   contain the following characters: a-z (lowercase), 0-9, and -
      #   (hyphen).
      # @option params [String] :elasticsearch_version
      #   String of format X.Y to specify version for the Elasticsearch domain
      #   eg. "1.5" or "2.3". For more information, see [Creating
      #   Elasticsearch Domains][1] in the *Amazon Elasticsearch Service
      #   Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains
      # @option params [Types::ElasticsearchClusterConfig] :elasticsearch_cluster_config
      #   Configuration options for an Elasticsearch domain. Specifies the
      #   instance type and number of instances in the domain cluster.
      # @option params [Types::EBSOptions] :ebs_options
      #   Options to enable, disable and specify the type and size of EBS
      #   storage volumes.
      # @option params [String] :access_policies
      #   IAM access policy as a JSON-formatted string.
      # @option params [Types::SnapshotOptions] :snapshot_options
      #   Option to set time, in UTC format, of the daily automated snapshot.
      #   Default value is 0 hours.
      # @option params [Hash<String,String>] :advanced_options
      #   Option to allow references to indices in an HTTP request body. Must be
      #   `false` when configuring access to individual sub-resources. By
      #   default, the value is `true`. See [Configuration Advanced Options][1]
      #   for more information.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options
      # @return [Types::CreateElasticsearchDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateElasticsearchDomainResponse#domain_status #DomainStatus} => Types::ElasticsearchDomainStatus
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_elasticsearch_domain({
      #     domain_name: "DomainName", # required
      #     elasticsearch_version: "ElasticsearchVersionString",
      #     elasticsearch_cluster_config: {
      #       instance_type: "m3.medium.elasticsearch", # accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch
      #       instance_count: 1,
      #       dedicated_master_enabled: false,
      #       zone_awareness_enabled: false,
      #       dedicated_master_type: "m3.medium.elasticsearch", # accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch
      #       dedicated_master_count: 1,
      #     },
      #     ebs_options: {
      #       ebs_enabled: false,
      #       volume_type: "standard", # accepts standard, gp2, io1
      #       volume_size: 1,
      #       iops: 1,
      #     },
      #     access_policies: "PolicyDocument",
      #     snapshot_options: {
      #       automated_snapshot_start_hour: 1,
      #     },
      #     advanced_options: {
      #       "String" => "String",
      #     },
      #   })
      #
      # @example Response structure
      #   resp.domain_status.domain_id #=> String
      #   resp.domain_status.domain_name #=> String
      #   resp.domain_status.arn #=> String
      #   resp.domain_status.created #=> Boolean
      #   resp.domain_status.deleted #=> Boolean
      #   resp.domain_status.endpoint #=> String
      #   resp.domain_status.processing #=> Boolean
      #   resp.domain_status.elasticsearch_version #=> String
      #   resp.domain_status.elasticsearch_cluster_config.instance_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch"
      #   resp.domain_status.elasticsearch_cluster_config.instance_count #=> Integer
      #   resp.domain_status.elasticsearch_cluster_config.dedicated_master_enabled #=> Boolean
      #   resp.domain_status.elasticsearch_cluster_config.zone_awareness_enabled #=> Boolean
      #   resp.domain_status.elasticsearch_cluster_config.dedicated_master_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch"
      #   resp.domain_status.elasticsearch_cluster_config.dedicated_master_count #=> Integer
      #   resp.domain_status.ebs_options.ebs_enabled #=> Boolean
      #   resp.domain_status.ebs_options.volume_type #=> String, one of "standard", "gp2", "io1"
      #   resp.domain_status.ebs_options.volume_size #=> Integer
      #   resp.domain_status.ebs_options.iops #=> Integer
      #   resp.domain_status.access_policies #=> String
      #   resp.domain_status.snapshot_options.automated_snapshot_start_hour #=> Integer
      #   resp.domain_status.advanced_options #=> Hash
      #   resp.domain_status.advanced_options["String"] #=> String
      # @overload create_elasticsearch_domain(params = {})
      # @param [Hash] params ({})
      def create_elasticsearch_domain(params = {}, options = {})
        req = build_request(:create_elasticsearch_domain, params)
        req.send_request(options)
      end

      # Permanently deletes the specified Elasticsearch domain and all of its
      # data. Once a domain is deleted, it cannot be recovered.
      # @option params [required, String] :domain_name
      #   The name of the Elasticsearch domain that you want to permanently
      #   delete.
      # @return [Types::DeleteElasticsearchDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteElasticsearchDomainResponse#domain_status #DomainStatus} => Types::ElasticsearchDomainStatus
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_elasticsearch_domain({
      #     domain_name: "DomainName", # required
      #   })
      #
      # @example Response structure
      #   resp.domain_status.domain_id #=> String
      #   resp.domain_status.domain_name #=> String
      #   resp.domain_status.arn #=> String
      #   resp.domain_status.created #=> Boolean
      #   resp.domain_status.deleted #=> Boolean
      #   resp.domain_status.endpoint #=> String
      #   resp.domain_status.processing #=> Boolean
      #   resp.domain_status.elasticsearch_version #=> String
      #   resp.domain_status.elasticsearch_cluster_config.instance_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch"
      #   resp.domain_status.elasticsearch_cluster_config.instance_count #=> Integer
      #   resp.domain_status.elasticsearch_cluster_config.dedicated_master_enabled #=> Boolean
      #   resp.domain_status.elasticsearch_cluster_config.zone_awareness_enabled #=> Boolean
      #   resp.domain_status.elasticsearch_cluster_config.dedicated_master_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch"
      #   resp.domain_status.elasticsearch_cluster_config.dedicated_master_count #=> Integer
      #   resp.domain_status.ebs_options.ebs_enabled #=> Boolean
      #   resp.domain_status.ebs_options.volume_type #=> String, one of "standard", "gp2", "io1"
      #   resp.domain_status.ebs_options.volume_size #=> Integer
      #   resp.domain_status.ebs_options.iops #=> Integer
      #   resp.domain_status.access_policies #=> String
      #   resp.domain_status.snapshot_options.automated_snapshot_start_hour #=> Integer
      #   resp.domain_status.advanced_options #=> Hash
      #   resp.domain_status.advanced_options["String"] #=> String
      # @overload delete_elasticsearch_domain(params = {})
      # @param [Hash] params ({})
      def delete_elasticsearch_domain(params = {}, options = {})
        req = build_request(:delete_elasticsearch_domain, params)
        req.send_request(options)
      end

      # Returns domain configuration information about the specified
      # Elasticsearch domain, including the domain ID, domain endpoint, and
      # domain ARN.
      # @option params [required, String] :domain_name
      #   The name of the Elasticsearch domain for which you want information.
      # @return [Types::DescribeElasticsearchDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeElasticsearchDomainResponse#domain_status #DomainStatus} => Types::ElasticsearchDomainStatus
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_elasticsearch_domain({
      #     domain_name: "DomainName", # required
      #   })
      #
      # @example Response structure
      #   resp.domain_status.domain_id #=> String
      #   resp.domain_status.domain_name #=> String
      #   resp.domain_status.arn #=> String
      #   resp.domain_status.created #=> Boolean
      #   resp.domain_status.deleted #=> Boolean
      #   resp.domain_status.endpoint #=> String
      #   resp.domain_status.processing #=> Boolean
      #   resp.domain_status.elasticsearch_version #=> String
      #   resp.domain_status.elasticsearch_cluster_config.instance_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch"
      #   resp.domain_status.elasticsearch_cluster_config.instance_count #=> Integer
      #   resp.domain_status.elasticsearch_cluster_config.dedicated_master_enabled #=> Boolean
      #   resp.domain_status.elasticsearch_cluster_config.zone_awareness_enabled #=> Boolean
      #   resp.domain_status.elasticsearch_cluster_config.dedicated_master_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch"
      #   resp.domain_status.elasticsearch_cluster_config.dedicated_master_count #=> Integer
      #   resp.domain_status.ebs_options.ebs_enabled #=> Boolean
      #   resp.domain_status.ebs_options.volume_type #=> String, one of "standard", "gp2", "io1"
      #   resp.domain_status.ebs_options.volume_size #=> Integer
      #   resp.domain_status.ebs_options.iops #=> Integer
      #   resp.domain_status.access_policies #=> String
      #   resp.domain_status.snapshot_options.automated_snapshot_start_hour #=> Integer
      #   resp.domain_status.advanced_options #=> Hash
      #   resp.domain_status.advanced_options["String"] #=> String
      # @overload describe_elasticsearch_domain(params = {})
      # @param [Hash] params ({})
      def describe_elasticsearch_domain(params = {}, options = {})
        req = build_request(:describe_elasticsearch_domain, params)
        req.send_request(options)
      end

      # Provides cluster configuration information about the specified
      # Elasticsearch domain, such as the state, creation date, update
      # version, and update date for cluster options.
      # @option params [required, String] :domain_name
      #   The Elasticsearch domain that you want to get information about.
      # @return [Types::DescribeElasticsearchDomainConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeElasticsearchDomainConfigResponse#domain_config #DomainConfig} => Types::ElasticsearchDomainConfig
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_elasticsearch_domain_config({
      #     domain_name: "DomainName", # required
      #   })
      #
      # @example Response structure
      #   resp.domain_config.elasticsearch_version.options #=> String
      #   resp.domain_config.elasticsearch_version.status.creation_date #=> Time
      #   resp.domain_config.elasticsearch_version.status.update_date #=> Time
      #   resp.domain_config.elasticsearch_version.status.update_version #=> Integer
      #   resp.domain_config.elasticsearch_version.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
      #   resp.domain_config.elasticsearch_version.status.pending_deletion #=> Boolean
      #   resp.domain_config.elasticsearch_cluster_config.options.instance_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch"
      #   resp.domain_config.elasticsearch_cluster_config.options.instance_count #=> Integer
      #   resp.domain_config.elasticsearch_cluster_config.options.dedicated_master_enabled #=> Boolean
      #   resp.domain_config.elasticsearch_cluster_config.options.zone_awareness_enabled #=> Boolean
      #   resp.domain_config.elasticsearch_cluster_config.options.dedicated_master_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch"
      #   resp.domain_config.elasticsearch_cluster_config.options.dedicated_master_count #=> Integer
      #   resp.domain_config.elasticsearch_cluster_config.status.creation_date #=> Time
      #   resp.domain_config.elasticsearch_cluster_config.status.update_date #=> Time
      #   resp.domain_config.elasticsearch_cluster_config.status.update_version #=> Integer
      #   resp.domain_config.elasticsearch_cluster_config.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
      #   resp.domain_config.elasticsearch_cluster_config.status.pending_deletion #=> Boolean
      #   resp.domain_config.ebs_options.options.ebs_enabled #=> Boolean
      #   resp.domain_config.ebs_options.options.volume_type #=> String, one of "standard", "gp2", "io1"
      #   resp.domain_config.ebs_options.options.volume_size #=> Integer
      #   resp.domain_config.ebs_options.options.iops #=> Integer
      #   resp.domain_config.ebs_options.status.creation_date #=> Time
      #   resp.domain_config.ebs_options.status.update_date #=> Time
      #   resp.domain_config.ebs_options.status.update_version #=> Integer
      #   resp.domain_config.ebs_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
      #   resp.domain_config.ebs_options.status.pending_deletion #=> Boolean
      #   resp.domain_config.access_policies.options #=> String
      #   resp.domain_config.access_policies.status.creation_date #=> Time
      #   resp.domain_config.access_policies.status.update_date #=> Time
      #   resp.domain_config.access_policies.status.update_version #=> Integer
      #   resp.domain_config.access_policies.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
      #   resp.domain_config.access_policies.status.pending_deletion #=> Boolean
      #   resp.domain_config.snapshot_options.options.automated_snapshot_start_hour #=> Integer
      #   resp.domain_config.snapshot_options.status.creation_date #=> Time
      #   resp.domain_config.snapshot_options.status.update_date #=> Time
      #   resp.domain_config.snapshot_options.status.update_version #=> Integer
      #   resp.domain_config.snapshot_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
      #   resp.domain_config.snapshot_options.status.pending_deletion #=> Boolean
      #   resp.domain_config.advanced_options.options #=> Hash
      #   resp.domain_config.advanced_options.options["String"] #=> String
      #   resp.domain_config.advanced_options.status.creation_date #=> Time
      #   resp.domain_config.advanced_options.status.update_date #=> Time
      #   resp.domain_config.advanced_options.status.update_version #=> Integer
      #   resp.domain_config.advanced_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
      #   resp.domain_config.advanced_options.status.pending_deletion #=> Boolean
      # @overload describe_elasticsearch_domain_config(params = {})
      # @param [Hash] params ({})
      def describe_elasticsearch_domain_config(params = {}, options = {})
        req = build_request(:describe_elasticsearch_domain_config, params)
        req.send_request(options)
      end

      # Returns domain configuration information about the specified
      # Elasticsearch domains, including the domain ID, domain endpoint, and
      # domain ARN.
      # @option params [required, Array<String>] :domain_names
      #   The Elasticsearch domains for which you want information.
      # @return [Types::DescribeElasticsearchDomainsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeElasticsearchDomainsResponse#domain_status_list #DomainStatusList} => Array&lt;Types::ElasticsearchDomainStatus&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_elasticsearch_domains({
      #     domain_names: ["DomainName"], # required
      #   })
      #
      # @example Response structure
      #   resp.domain_status_list #=> Array
      #   resp.domain_status_list[0].domain_id #=> String
      #   resp.domain_status_list[0].domain_name #=> String
      #   resp.domain_status_list[0].arn #=> String
      #   resp.domain_status_list[0].created #=> Boolean
      #   resp.domain_status_list[0].deleted #=> Boolean
      #   resp.domain_status_list[0].endpoint #=> String
      #   resp.domain_status_list[0].processing #=> Boolean
      #   resp.domain_status_list[0].elasticsearch_version #=> String
      #   resp.domain_status_list[0].elasticsearch_cluster_config.instance_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch"
      #   resp.domain_status_list[0].elasticsearch_cluster_config.instance_count #=> Integer
      #   resp.domain_status_list[0].elasticsearch_cluster_config.dedicated_master_enabled #=> Boolean
      #   resp.domain_status_list[0].elasticsearch_cluster_config.zone_awareness_enabled #=> Boolean
      #   resp.domain_status_list[0].elasticsearch_cluster_config.dedicated_master_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch"
      #   resp.domain_status_list[0].elasticsearch_cluster_config.dedicated_master_count #=> Integer
      #   resp.domain_status_list[0].ebs_options.ebs_enabled #=> Boolean
      #   resp.domain_status_list[0].ebs_options.volume_type #=> String, one of "standard", "gp2", "io1"
      #   resp.domain_status_list[0].ebs_options.volume_size #=> Integer
      #   resp.domain_status_list[0].ebs_options.iops #=> Integer
      #   resp.domain_status_list[0].access_policies #=> String
      #   resp.domain_status_list[0].snapshot_options.automated_snapshot_start_hour #=> Integer
      #   resp.domain_status_list[0].advanced_options #=> Hash
      #   resp.domain_status_list[0].advanced_options["String"] #=> String
      # @overload describe_elasticsearch_domains(params = {})
      # @param [Hash] params ({})
      def describe_elasticsearch_domains(params = {}, options = {})
        req = build_request(:describe_elasticsearch_domains, params)
        req.send_request(options)
      end

      # Returns the name of all Elasticsearch domains owned by the current
      # user's account.
      # @return [Types::ListDomainNamesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListDomainNamesResponse#domain_names #DomainNames} => Array&lt;Types::DomainInfo&gt;
      #
      # @example Response structure
      #   resp.domain_names #=> Array
      #   resp.domain_names[0].domain_name #=> String
      # @overload list_domain_names(params = {})
      # @param [Hash] params ({})
      def list_domain_names(params = {}, options = {})
        req = build_request(:list_domain_names, params)
        req.send_request(options)
      end

      # Returns all tags for the given Elasticsearch domain.
      # @option params [required, String] :arn
      #   Specify the `ARN` for the Elasticsearch domain to which the tags are
      #   attached that you want to view.
      # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTagsResponse#tag_list #TagList} => Array&lt;Types::Tag&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_tags({
      #     arn: "ARN", # required
      #   })
      #
      # @example Response structure
      #   resp.tag_list #=> Array
      #   resp.tag_list[0].key #=> String
      #   resp.tag_list[0].value #=> String
      # @overload list_tags(params = {})
      # @param [Hash] params ({})
      def list_tags(params = {}, options = {})
        req = build_request(:list_tags, params)
        req.send_request(options)
      end

      # Removes the specified set of tags from the specified Elasticsearch
      # domain.
      # @option params [required, String] :arn
      #   Specifies the `ARN` for the Elasticsearch domain from which you want
      #   to delete the specified tags.
      # @option params [required, Array<String>] :tag_keys
      #   Specifies the `TagKey` list which you want to remove from the
      #   Elasticsearch domain.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.remove_tags({
      #     arn: "ARN", # required
      #     tag_keys: ["String"], # required
      #   })
      # @overload remove_tags(params = {})
      # @param [Hash] params ({})
      def remove_tags(params = {}, options = {})
        req = build_request(:remove_tags, params)
        req.send_request(options)
      end

      # Modifies the cluster configuration of the specified Elasticsearch
      # domain, setting as setting the instance type and the number of
      # instances.
      # @option params [required, String] :domain_name
      #   The name of the Elasticsearch domain that you are updating.
      # @option params [Types::ElasticsearchClusterConfig] :elasticsearch_cluster_config
      #   The type and number of instances to instantiate for the domain
      #   cluster.
      # @option params [Types::EBSOptions] :ebs_options
      #   Specify the type and size of the EBS volume that you want to use.
      # @option params [Types::SnapshotOptions] :snapshot_options
      #   Option to set the time, in UTC format, for the daily automated
      #   snapshot. Default value is `0` hours.
      # @option params [Hash<String,String>] :advanced_options
      #   Modifies the advanced option to allow references to indices in an HTTP
      #   request body. Must be `false` when configuring access to individual
      #   sub-resources. By default, the value is `true`. See [Configuration
      #   Advanced Options][1] for more information.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options
      # @option params [String] :access_policies
      #   IAM access policy as a JSON-formatted string.
      # @return [Types::UpdateElasticsearchDomainConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateElasticsearchDomainConfigResponse#domain_config #DomainConfig} => Types::ElasticsearchDomainConfig
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_elasticsearch_domain_config({
      #     domain_name: "DomainName", # required
      #     elasticsearch_cluster_config: {
      #       instance_type: "m3.medium.elasticsearch", # accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch
      #       instance_count: 1,
      #       dedicated_master_enabled: false,
      #       zone_awareness_enabled: false,
      #       dedicated_master_type: "m3.medium.elasticsearch", # accepts m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch
      #       dedicated_master_count: 1,
      #     },
      #     ebs_options: {
      #       ebs_enabled: false,
      #       volume_type: "standard", # accepts standard, gp2, io1
      #       volume_size: 1,
      #       iops: 1,
      #     },
      #     snapshot_options: {
      #       automated_snapshot_start_hour: 1,
      #     },
      #     advanced_options: {
      #       "String" => "String",
      #     },
      #     access_policies: "PolicyDocument",
      #   })
      #
      # @example Response structure
      #   resp.domain_config.elasticsearch_version.options #=> String
      #   resp.domain_config.elasticsearch_version.status.creation_date #=> Time
      #   resp.domain_config.elasticsearch_version.status.update_date #=> Time
      #   resp.domain_config.elasticsearch_version.status.update_version #=> Integer
      #   resp.domain_config.elasticsearch_version.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
      #   resp.domain_config.elasticsearch_version.status.pending_deletion #=> Boolean
      #   resp.domain_config.elasticsearch_cluster_config.options.instance_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch"
      #   resp.domain_config.elasticsearch_cluster_config.options.instance_count #=> Integer
      #   resp.domain_config.elasticsearch_cluster_config.options.dedicated_master_enabled #=> Boolean
      #   resp.domain_config.elasticsearch_cluster_config.options.zone_awareness_enabled #=> Boolean
      #   resp.domain_config.elasticsearch_cluster_config.options.dedicated_master_type #=> String, one of "m3.medium.elasticsearch", "m3.large.elasticsearch", "m3.xlarge.elasticsearch", "m3.2xlarge.elasticsearch", "m4.large.elasticsearch", "m4.xlarge.elasticsearch", "m4.2xlarge.elasticsearch", "m4.4xlarge.elasticsearch", "m4.10xlarge.elasticsearch", "t2.micro.elasticsearch", "t2.small.elasticsearch", "t2.medium.elasticsearch", "r3.large.elasticsearch", "r3.xlarge.elasticsearch", "r3.2xlarge.elasticsearch", "r3.4xlarge.elasticsearch", "r3.8xlarge.elasticsearch", "i2.xlarge.elasticsearch", "i2.2xlarge.elasticsearch"
      #   resp.domain_config.elasticsearch_cluster_config.options.dedicated_master_count #=> Integer
      #   resp.domain_config.elasticsearch_cluster_config.status.creation_date #=> Time
      #   resp.domain_config.elasticsearch_cluster_config.status.update_date #=> Time
      #   resp.domain_config.elasticsearch_cluster_config.status.update_version #=> Integer
      #   resp.domain_config.elasticsearch_cluster_config.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
      #   resp.domain_config.elasticsearch_cluster_config.status.pending_deletion #=> Boolean
      #   resp.domain_config.ebs_options.options.ebs_enabled #=> Boolean
      #   resp.domain_config.ebs_options.options.volume_type #=> String, one of "standard", "gp2", "io1"
      #   resp.domain_config.ebs_options.options.volume_size #=> Integer
      #   resp.domain_config.ebs_options.options.iops #=> Integer
      #   resp.domain_config.ebs_options.status.creation_date #=> Time
      #   resp.domain_config.ebs_options.status.update_date #=> Time
      #   resp.domain_config.ebs_options.status.update_version #=> Integer
      #   resp.domain_config.ebs_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
      #   resp.domain_config.ebs_options.status.pending_deletion #=> Boolean
      #   resp.domain_config.access_policies.options #=> String
      #   resp.domain_config.access_policies.status.creation_date #=> Time
      #   resp.domain_config.access_policies.status.update_date #=> Time
      #   resp.domain_config.access_policies.status.update_version #=> Integer
      #   resp.domain_config.access_policies.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
      #   resp.domain_config.access_policies.status.pending_deletion #=> Boolean
      #   resp.domain_config.snapshot_options.options.automated_snapshot_start_hour #=> Integer
      #   resp.domain_config.snapshot_options.status.creation_date #=> Time
      #   resp.domain_config.snapshot_options.status.update_date #=> Time
      #   resp.domain_config.snapshot_options.status.update_version #=> Integer
      #   resp.domain_config.snapshot_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
      #   resp.domain_config.snapshot_options.status.pending_deletion #=> Boolean
      #   resp.domain_config.advanced_options.options #=> Hash
      #   resp.domain_config.advanced_options.options["String"] #=> String
      #   resp.domain_config.advanced_options.status.creation_date #=> Time
      #   resp.domain_config.advanced_options.status.update_date #=> Time
      #   resp.domain_config.advanced_options.status.update_version #=> Integer
      #   resp.domain_config.advanced_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active"
      #   resp.domain_config.advanced_options.status.pending_deletion #=> Boolean
      # @overload update_elasticsearch_domain_config(params = {})
      # @param [Hash] params ({})
      def update_elasticsearch_domain_config(params = {}, options = {})
        req = build_request(:update_elasticsearch_domain_config, params)
        req.send_request(options)
      end

      # @!endgroup

      # Polls an API operation until a resource enters a desired state.
      #
      # ## Basic Usage
      #
      # A waiter will call an API operation until:
      #
      # * It is successful
      # * It enters a terminal state
      # * It makes the maximum number of attempts
      #
      # In between attempts, the waiter will sleep.
      #
      #    # polls in a loop, sleeping between attempts
      #    client.waiter_until(waiter_name, params)
      #
      # ## Configuration
      #
      # You can configure the maximum number of polling attempts, and the
      # delay (in seconds) between each polling attempt. You can pass
      # configuration as the final arguments hash.
      #
      #     # poll for ~25 seconds
      #     client.wait_until(waiter_name, params, {
      #       max_attempts: 5,
      #       delay: 5,
      #     })
      #
      # ## Callbacks
      #
      # You can be notified before each polling attempt and before each
      # delay. If you throw `:success` or `:failure` from these callbacks,
      # it will terminate the waiter.
      #
      #     started_at = Time.now
      #     client.wait_until(waiter_name, params, {
      #
      #       # disable max attempts
      #       max_attempts: nil,
      #
      #       # poll for 1 hour, instead of a number of attempts
      #       before_wait: -> (attempts, response) do
      #         throw :failure if Time.now - started_at > 3600
      #       end
      #     })
      #
      # ## Handling Errors
      #
      # When a waiter is unsuccessful, it will raise an error.
      # All of the failure errors extend from
      # {Aws::Waiters::Errors::WaiterFailed}**.
      #
      #     begin
      #       client.wait_until(...)
      #     rescue Aws::Waiters::Errors::WaiterFailed
      #       # resource did not enter the desired state in time
      #     end
      #
      # @param [Symbol] waiter_name The name of the waiter.
      #   Must be one of the following:
      #
      #
      #
      # @param [Hash] params A hash of request parameters to send to the
      #   operation. The following list links to the operation called by
      #   the named waiter.
      #
      #
      #
      # @yieldparam [Waiters::Waiter] waiter Yields a {Waiters::Waiter Waiter}
      #   object that can be configured prior to waiting.
      #
      # @raise [Errors::FailureStateError] Raised when the waiter terminates
      #   because the waiter has entered a state that it will not transition
      #   out of, preventing success.
      #
      # @raise [Errors::TooManyAttemptsError] Raised when the configured
      #   maximum number of attempts have been made, and the waiter is not
      #   yet successful.
      #
      # @raise [Errors::UnexpectedError] Raised when an error is encounted
      #   while polling for a resource that is not expected.
      #
      # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
      #   for an unknown state.
      #
      # @return [Boolean] Returns `true` if the waiter was successful.
      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      # @api private
      # @deprecated
      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end