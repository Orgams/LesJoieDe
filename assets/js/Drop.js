Drop = {};
Drop = function ()
{
    // Propriétés privées statique
    // --------------------------------------------------------------------------------
    dropZones = [];

    // Propriétés privées
    // --------------------------------------------------------------------------------
    var page = $('html');

    // Méthodes executer à la création
    // --------------------------------------------------------------------------------
    initEventPage();


    // Méthodes statiques publiques
    // --------------------------------------------------------------------------------
    __addDropZone = function (callBack, selectBaliseDorp, couleurPassive, couleurActive)
    {
        /*traitement de parametre*/
        selectBaliseDorp = selectBaliseDorp || '.dropable';
        callBack = callBack || afficherDansLaConsole;
        couleurPassive = couleurPassive || "rgba(0, 255, 0, 0.5)";
        couleurActive = couleurActive || "rgba(0, 255, 0, 1)";
        dropZones.push(selectBaliseDorp)

        /*element manipulé*/
        var elemDrop = $(selectBaliseDorp);
        var sortieDropZone;

        /*déactivation du comportement par défaut*/
        page.on(
            'dragover',
            function (e)
            {
                e.preventDefault();
                e.stopPropagation();
            }
        );

        /*mise en place des zones dropables*/
        elemDrop.on(
            'drop',

            function (e)
            {
                if (e.originalEvent.dataTransfer)
                {
                    if (e.originalEvent.dataTransfer.files.length)
                    {
                        e.preventDefault();
                        e.stopPropagation();
                        callBack(e.originalEvent.dataTransfer.files);
                        hideDropZone(elemDrop);
                    }
                }
            }
        );

        function afficherDansLaConsole(files)
        {
            for (i = 0; i < files.length; i++)
            {
                var file = files[i];
                console.log(file.name + " (" + file.type + ") : ");
                var reader = new FileReader();
                reader.onload = function (event)
                {
                    console.log(event.target.result);
                };
                reader.readAsDataURL(file);
            }
        }

        /*signalisation des zones dropables*/
        page.on(
            'dragenter',

            function (e)
            {
                e.preventDefault();
                e.stopPropagation();
                showDropZone();
                return false;
            }
        );

        elemDrop.on(
            'dragenter',

            function (e)
            {
                e.preventDefault();
                e.stopPropagation();
                sortieDropZone = true;
                elemDrop.css("backgroundColor", couleurActive);
                return false;
            }
        );

        elemDrop.on(
            'dragleave',

            function (e)
            {
                e.preventDefault();
                e.stopPropagation();
                if (sortieDropZone)
                {
                    sortieDropZone = false;
                } else
                {
                    showDropZone();
                }
                return false;
            }
        );

        function showDropZone()
        {
            elemDrop.css("backgroundColor", couleurPassive);
            elemDrop.children().css("opacity", 0.5);
        }
    }

    // Méthodes statiques publiques
    // --------------------------------------------------------------------------------
    function initEventPage()
    {
        page.on(
            'mouseenter',

            function (e)
            {
                e.preventDefault();
                e.stopPropagation();
                hideDropZone();
            }
        );

        page.on(
        'drop',
            function (e)
            {
                e.preventDefault();
                e.stopPropagation();
                hideDropZone();
            }
        );
    };

    function hideDropZone()
    {
        for (var i = 0; i < dropZones.length; i++)
        {
            $(dropZones[i]).css("backgroundColor", "");
            $(dropZones[i]).children().css("opacity", 1);
        }
    }

    // Exposition des membres publics
    // --------------------------------------------------------------------------------
    return {
        addDropZone: __addDropZone
    };
}();