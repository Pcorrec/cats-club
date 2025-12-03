*** Settings ***
Documentation    Comformité de la page d'accueil
Metadata         ID                           2
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Comformité de la page d'accueil
    [Documentation]    Comformité de la page d'accueil

    Given Je suis sur la page d'accueil
    Then Le message "Bienvenue dans le Cats Club !" est affiché


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_2_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_2_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =      Get Variable Value    ${TEST_SETUP}
    ${TEST_2_SETUP_VALUE} =    Get Variable Value    ${TEST_2_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_2_SETUP_VALUE is not None
        Run Keyword    ${TEST_2_SETUP}
    END
    Open Browser    http://localhost:8080/index.html    firefox

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_2_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_2_TEARDOWN}.

    Close Browser

    ${TEST_2_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_2_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =      Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_2_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_2_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
