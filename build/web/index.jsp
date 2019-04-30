<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="js/additional-methods.min.js" type="text/javascript"></script>
        <script src="js/localization/messages_pt_BR.min.js" type="text/javascript"></script>
        <script src="js/jquery.mask.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
//                0 -> numero obrigatorio
//                9 -> numero opcional
                $("#cpf").mask("000.000.000-00")
                $("#tel").mask("(00)0000-0000")
                $("#nasc").mask("00/00/0000")
            })
            $(document).ready(function () {
                $("#formulario").validate({
                    rules: {
                        nome: {
                            required: true,
                            minWords: 2
                        },
                        cpf: {
                            required: true,
                            cpfBR: true
                        },
                        tel: {
                            required: true
                        },
                        nasc: {
                            required: true,
                            dateITA: true
                        }
                    }
                })
            })
        </script>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="container">
                        <form name="formulario" id="formulario" action="salvar.jsp" method="post">
                            <br />
                            <div class="form-group">
                                <label>Nome completo</label>
                                <input type="text" name="nome" id="nome" placeholder="Tijolinho Batatôncio" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label>CPF</label>
                                <input type="text" name="cpf" id="cpf" placeholder="000.000.000-0" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label>Telefone</label>
                                <input type="text" name="tel" id="tel" placeholder="(00)0000-0000" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label>Data de nascimento</label>
                                <input type="text" name="nasc" id="nasc" placeholder="__/__/____" class="form-control" />
                            </div>
                            <br />
                            <input type="submit" value="Registrar" class="btn btn-outline-danger" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
