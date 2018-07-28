<p class="text-center"><strong>Alunos:<br></strong>  Luiz Felipe Mantovani -  Everson Ferreira</p>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>        
        $('#contas').change( function() {
            var saldo = $(this).find(':selected').attr('data-saldo');
            $('.alert').removeClass('d-none').find('strong').text('').text(' - R$ ' + saldo);
        });
    </script>
</body>
</html>