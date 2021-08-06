Open Web Calendar
=================

Experimental fork of [Open Web Calendar](https://github.com/niccokunzmann/open-web-calendar)
to realize a reduced timetable view.

Some changes:
- only title of events are displayed (not the description)
- "read-only" view (no mouse interaction/tool-tip)
- Use COLOR attribute (e.g. set by nextclouds calendar app)
- serve default calendar for "/"
- wip: use URL prefix


Software Components
-------------------

- Python3 and the packages in requirements.txt
  - [Flask](http://flask.pocoo.org/)
- [DHTMLX scheduler](https://docs.dhtmlx.com/scheduler/)
- [python-recurring-ical-events](https://github.com/niccokunzmann/python-recurring-ical-events)


Development
-----------

1. Optional: Install virtualenv and Python3 and create a virtual environment.
    ```
    virtualenv -p python3 ENV
    source ENV/bin/activate
    ```
2. Install the packages.
    ```
    pip install -r requirements.txt
    ```
3. Start the app.
    ```
    python3 app.py
    ```

For the configuration of the app through environment variables,
see the [app.json] file.

