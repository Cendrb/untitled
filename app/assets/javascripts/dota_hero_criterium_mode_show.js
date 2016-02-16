$(document).ready(function () {
    current_hero_stats = $("#current_hero_stats");
        $(".mode_show_hero_selector").change(function () {
            current_hero_stats.text("Loading hero data...");
            $.ajax({
                type: "GET",
                url: "/dota_hero_show_criterium_modes/" + current_hero_stats.data("id"),
                data: {dota_hero_id: $(this).val()},
                dataType: 'script',
                format: 'js',
                error: function (xhr, textStatus, errorThrown) {
                    current_hero_stats.text("Something went wrong.");
                }
            });
        });
    }
);