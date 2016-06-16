// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
// This is optional (in case you have `I18n is not defined` error)
// If you want to put this line, you must put it BEFORE `i18n/translations`
//= require i18n
// Some people even need to add the extension to make it work, see https://github.com/fnando/i18n-js/issues/283
//= require i18n.js
//
// This is a must
//= require i18n/translations
//
//cdn.datatables.net/plug-ins/1.10.11/i18n/French.json
//= require jquery
//= require jquery_ujs
//= require dataTables/jquery.dataTables
//= require twitter/bootstrap
//= require turbolinks
//= require_tree
//= require jquery.turbolinks
//= require admin-lte

$(document).ready(function(){
  var table=$('#table').DataTable( {
    "order": [],
    "scrollx": true,
    "language": I18n.t('data_table'),
    "columnDefs": [
      {"targets"  : 'no-sort',"orderable": false},
      {"targets"  : 'no',"visible": false}
    ]
  });

  $(".fr").click(function() {
    I18n.locale = "fr";
  });
  $(".en").click(function() {
    I18n.locale = "en";
  });

  $('a.column').on( 'click', function (e) {
    e.preventDefault();

    // Get the column API object
    var column = table.column( $(this).attr('data-column') );

    // Toggle the visibility
    column.visible( ! column.visible() );
    console.log(column.visible())
    if (column.visible()){
      $(this).parent().appendTo($('#visible'))
    }
    else{
      $(this).parent().appendTo($('#hidden'))
    }
  });
});