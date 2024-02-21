defmodule Reporting do
  @moduledoc """
  Provides API endpoints related to reporting
  """

  @default_client Client

  @doc """
  Query Campaign Values

  Returns the requested campaign analytics values data<br><br>*Rate limits*:<br>Burst: `1/s`<br>Steady: `2/m`<br>Daily: `225/d`

  **Scopes:**
  `campaigns:read`

  ## Options

    * `page_cursor`: For more information please visit https://developers.klaviyo.com/en/v2024-02-15/reference/api-overview#pagination

  """
  @spec query_campaign_values(CampaignValuesRequestDto.t(), keyword) ::
          {:ok, PostCampaignValuesResponseDto.t()} | {:error, map}
  def query_campaign_values(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:page_cursor])

    client.request(%{
      args: [body: body],
      call: {Reporting, :query_campaign_values},
      url: "/api/campaign-values-reports/",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", {CampaignValuesRequestDto, :t}}],
      response: [{200, {PostCampaignValuesResponseDto, :t}}, {"4XX", :map}, {"5XX", :map}],
      opts: opts
    })
  end

  @doc """
  Query Flow Series

  Returns the requested flow analytics series data<br><br>*Rate limits*:<br>Burst: `1/s`<br>Steady: `2/m`<br>Daily: `225/d`

  **Scopes:**
  `flows:read`

  ## Options

    * `page_cursor`: For more information please visit https://developers.klaviyo.com/en/v2024-02-15/reference/api-overview#pagination

  """
  @spec query_flow_series(FlowSeriesRequestDto.t(), keyword) ::
          {:ok, PostFlowSeriesResponseDto.t()} | {:error, map}
  def query_flow_series(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:page_cursor])

    client.request(%{
      args: [body: body],
      call: {Reporting, :query_flow_series},
      url: "/api/flow-series-reports/",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", {FlowSeriesRequestDto, :t}}],
      response: [{200, {PostFlowSeriesResponseDto, :t}}, {"4XX", :map}, {"5XX", :map}],
      opts: opts
    })
  end

  @doc """
  Query Flow Values

  Returns the requested flow analytics values data<br><br>*Rate limits*:<br>Burst: `1/s`<br>Steady: `2/m`<br>Daily: `225/d`

  **Scopes:**
  `flows:read`

  ## Options

    * `page_cursor`: For more information please visit https://developers.klaviyo.com/en/v2024-02-15/reference/api-overview#pagination

  """
  @spec query_flow_values(FlowValuesRequestDto.t(), keyword) ::
          {:ok, PostFlowValuesResponseDto.t()} | {:error, map}
  def query_flow_values(body, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:page_cursor])

    client.request(%{
      args: [body: body],
      call: {Reporting, :query_flow_values},
      url: "/api/flow-values-reports/",
      body: body,
      method: :post,
      query: query,
      request: [{"application/json", {FlowValuesRequestDto, :t}}],
      response: [{200, {PostFlowValuesResponseDto, :t}}, {"4XX", :map}, {"5XX", :map}],
      opts: opts
    })
  end
end
