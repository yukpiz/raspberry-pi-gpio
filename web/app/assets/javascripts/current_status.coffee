$ ->

    update_temp = ->
        #Request Current Temperature.
        request = $.ajax({
            "url": "current_temp"
        })
        request.done (data) ->
            $("#current_temp").text data.current_temperature
            $("#average_temp").text data.average_temperature
            $("#highest_temp").text data.highest_temperature
            $("#lowest_temp").text data.lowest_temperature

    update_hum = ->
        #Request Current Humidity.
        request = $.ajax({
            "url": "current_hum"
        })
        request.done (data) ->
            $("#current_hum").text data.current_humidity
            $("#average_hum").text data.average_humidity
            $("#highest_hum").text data.highest_humidity
            $("#lowest_hum").text data.lowest_humidity

    update_bright = ->
        #Request Current Brightness.
        request = $.ajax({
            "url": "current_bright"
        })
        request.done (data) ->
            $("#current_bright").text data.current_brightness

    google_chart_init = ->
        google.charts.load "current", {"packages": ["corechart"]}

    update_chart1 = ->
        google.charts.setOnLoadCallback ->
            data = new google.visualization.arrayToDataTable [
                ['Hour', 'Temperature', 'Humidity']
                ['0h',  6, 100]
                ['1h',  5,  80]
                ['2h',  6,  90]
                ['3h',  7,  70]
                ['4h', 10,  55]
                ['5h',  8,  65]
                ['6h', 14,  70]
                ['7h', 12,  88]
                ['8h', 15,  45]
                ['9h', 12,  55]
                ['10h', 12,  48]
                ['11h', 15,  45]
                ['12h', 16,  43]
                ['13h', 19,  40]
                ['14h', 20,  46]
                ['15h', 21,  50]
                ['16h', 21,  59]
                ['17h', 18,  76]
                ['18h', 16,  81]
                ['19h', 15,  82]
                ['20h', 13,  87]
                ['21h', 14,  90]
                ['22h', 12,  93]
                ['23h',  8,  95]
            ]
            options = {
                title: "Chart of Temperature & Humidity."
                legend: {position: "top"}
                series: [
                    {type: "line", targetAxisIndex: 0}
                    {type: "line", targetAxisIndex: 1}
                ]
            }
            chart = new google.visualization.LineChart document.getElementById("line_chart1")
            chart.draw data, options

    update_chart2 = ->
        google.charts.setOnLoadCallback ->
            data = new google.visualization.arrayToDataTable [
                ['Hour', 'Brightness']
                ['0h', 24]
                ['1h', 23]
                ['2h', 18]
                ['3h', 28]
                ['4h', 21]
                ['5h', 14]
                ['6h', 85]
                ['7h', 120]
                ['8h', 141]
                ['9h', 135]
                ['10h', 2584]
                ['11h', 2695]
                ['12h', 2698]
                ['13h', 2795]
                ['14h', 2912]
                ['15h', 2974]
                ['16h', 2411]
                ['17h', 2988]
                ['18h', 3051]
                ['19h', 2969]
                ['20h', 2567]
                ['21h', 2969]
                ['22h', 24]
                ['23h', 12]
            ]
            options = {
                title: "Chart of Brightness."
                legend: {position: "top"}
            }
            chart = new google.visualization.LineChart document.getElementById("line_chart2")
            chart.draw data, options

    $("document").ready ->
        # Update Current Temperature & Humidity, Brightness.
        # Update 1 request per 3 seconds.
        update_temp()
        update_hum()
        update_bright()
        timer1 = setInterval update_temp, 1000
        timer2 = setInterval update_hum, 1000
        timer3 = setInterval update_bright, 1000

        google_chart_init()
        update_chart1()
        update_chart2()
        # TODO: Timer Update.
        #timer4 = setInterval update_chart1, 3000
