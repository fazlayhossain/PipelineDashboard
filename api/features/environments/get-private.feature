Feature: Get my environment
  In order to view the my environment
  As a logged in user
  I want to see the my environment

  Scenario: Get my environment
    Given I am logged in
    When I make a "GET" request to "/environments/e0000004-0000-0000-0000-99999999999"
    Then the status code should be 404

  Scenario: Get my environment
    Given I am logged in
    When I make a "GET" request to "/environments/e0000004-0000-0000-0000-000000000000"
    Then the status code should be 200
    And should have a field "id" with string "e0000004-0000-0000-0000-000000000000"
    And should have a field "owner" with string "RwbFXSyjZ6F3HJ3Qc5CGUNMdSX8f3m79@clients"
    And should have a field "type" with string "build-deploy"
    And should have a field "title" with string "Environment D"
    And should have a field "releases" with integer 800
    And should have a field "views" with integer 10324
    And should have a field "isPrivate" with boolean "false"
    And should have an "array" field "tokens" and in row 1 with:
      | field | value                                  |
      | id    | "e0000004-0000-0000-0000-t00000000001" |
      | name  | "Continuous Integration Server"        |
    And should have a field "latestRelease" with "object":
      | field         | value                                       |
      | id            | "e0000004-0000-0000-0000-r00000000001"      |
      | environmentId | "e0000004-0000-0000-0000-000000000000"      |
      | release       | "v2.0.0"                                    |
      | state         | "finishDeploy"                              |
      | token         | { "name": "Continuous Integration Server" } |
      | createdAt     | "2018-01-27T07:19:43.274Z"                  |
      | updatedAt     | "2018-01-27T07:19:43.274Z"                  |
    And should have a field "latestPing" with "object":
      | field         | value                                   |
      | id            | "e0000004-0000-0000-0000-p00000000001"  |
      | environmentId | "e0000004-0000-0000-0000-000000000000"  |
      | monitorId     | "e0000004-0000-0000-0000-m00000000001"  |
      | duration      | 1                                       |
      | codeMatched   | true                                    |
      | textMatched   | true                                    |
      | url           | "http://example.com/"                   |
      | createdAt     | "2018-01-27T09:14:10.932Z"              |
      | updatedAt     | "2018-01-27T09:14:10.932Z"              |
    And should have a field "progress" with "object":
      | field   | value |
      | current | 100   |
      | next    | 100   |
    And should have a field "createdAt" with string "2018-01-27T09:14:10.932Z"
    And should have a field "updatedAt" with string "2018-01-27T09:14:10.932Z"
