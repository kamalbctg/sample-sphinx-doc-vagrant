====================
Command Line Options
====================

These flags allow you to change the behavior of :program:`Crawler`.

.. option:: -d <sec>, --delay <sec>

    Use a delay in between page fetchs so we don't overwhelm the remote server.
    Value in seconds.

    Default: 1 second
    
.. option:: -c <int>, --concurrency <int>

	Use multiple system processes to crawl a website.

    Default: 1
    
.. option:: -i <regex>, --ignore <regex>

	Ignore pages that match a specific pattern.

    Default: None
