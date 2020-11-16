===============================
(WIP) MetricQ RPC documentation
===============================

This repository attempts to document the MetricQ RPC interface using the `AsyncAPI specification <https://www.asyncapi.com/>`_.

Accessing the documentation
---------------------------

Documentation build from the :literal:`master` branch and deployed `here <https://metricq.github.io/metricq-rpc-docs/>`_.

Building it yourself
--------------------

Install the necessary dependencies (e.g. `AsyncAPI Generator <https://github.com/asyncapi/generator>`_, the `HTML template <https://github.com/asyncapi/html-template>`_)::

    $ npm install --only=dev

Then, run::

    $ ag -p sidebarOrganization=byTags \
        --output docs  \
        manager.asyncapi.yaml ./template

...and find the generated HTML files in :literal:`docs/`.

