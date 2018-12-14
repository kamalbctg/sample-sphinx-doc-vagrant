.. contents:: :local:

Example 1:

.. graphviz::

   digraph {
      "From" -> "To";
   }

Example 2:

.. graphviz::

   digraph Flatland {

      a -> b -> c -> g;
      a  [shape=polygon,sides=4]
      b  [shape=polygon,sides=5]
      c  [shape=polygon,sides=6]

      g [peripheries=3,color=yellow];
      s [shape=invtriangle,peripheries=1,color=red,style=filled];
      w  [shape=triangle,peripheries=1,color=blue,style=filled];

      }

Example 3:

.. graphviz::
   :caption: This is a graph

   digraph lifecycle {
         overlap=false;

         contribute -> source;
         source -> build;
         build -> deploy;
         deploy -> upgrade;
         upgrade -> operate;
         operate -> change;
         change -> source;
         operate -> remove;
      }



Numerous examples are available online:

*  https://en.wikipedia.org/wiki/DOT_(graph_description_language)
*  http://www.graphviz.org/pdf/dotguide.pdf
*  http://graphs.grevian.org/example.html
* https://www.sphinx-doc.org/en/master/usage/extensions/graphviz.html
