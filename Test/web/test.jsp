<%-- 
    Document   : test
    Created on : 07-ene-2018, 20:22:20
    Author     : Erik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>  
<!DOCTYPE html>
<html>
    <head>
        
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale1.0, minimun-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos.css">
        <title>TEST PAP</title>
        <%@page session='true'%>
        
    </head>
    <body  <%if (session.getAttribute("validacion").equals("1"));else out.println("hidden> <script type=\"text/javascript\">window.location=\"http://localhost:8084/Test/index.jsp\";</script");%>>
        <header>
        
        <div class="container">
            <div class="row">
                <center><h1>Banco de preguntas</h1></center>
                <center><h1>Bienvenido <%out.println(session.getAttribute("usuario"));%></h1></center>
            </div>
        </div>
        </header>
                <br>
                <form action="resultado.jsp" class="formulario" method="post">
            <div class="radio-toolbar">
                <div class="form-group">
                    <h2>Cuando alguien te pide un favor y no tienes ganas de hacer o tampoco tiempo usted:</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                            <input type="radio" id="r11" name="rp1" value="0.7">
                    <label for="r11" id="r11" >Pese a todo lo hago, no sé decir que no.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r21" name="rp1" value="0.3">
                    <label for="r21" id="r21">Doy una excusa por tonta que sea para no tener que hacer ese favor.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r31" name="rp1" value="1">
                    <label for="r31" id="r31">Le digo la verdad, que no me apetece o no puedo hacer lo que me pide.</label>
                    </div>
                        </div>
                </div>
                
                
                <div class="form-group">
                    <h2>Viene alguien a interrumpirte cuando estás trabajando o haciendo algo que consideras importante, ¿qué haces?</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r12" name="rp2" value="0">
                    <label for="r12" id="r12">Le atiendo, pero procuro cortar cuanto antes con educación.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r22" name="rp2" value="0.5" >
                    <label for="r22" id="r22">Le atiendo sin mostrar ninguna prisa en que se marche.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r32" name="rp2" value="1.5">
                    <label for="r32" id="r32">No quiero interrupciones, así que procuro que no me vea y que otra persona diga que estoy muy ocupado.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>Cuando estás en grupo, ¿te cuesta tomar decisiones?</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r13" name="rp3">
                    <label for="r13" id="r13">Depende de la confianza que tenga con la gente del grupo, me cuesta más o menos.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r23" name="rp3">
                    <label for="r23" id="r23">Normalmente no me cuesta tomar decisiones, sea donde sea.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r33" name="rp3">
                    <label for="r33" id="r33">Sí, me suele costar mucho tomar cualquier decisión cuando estoy en grupo.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>Si pudieras cambiar algo de tu aspecto físico que no te gusta</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r14" name="rp4">
                    <label for="r14" id="r14">Cambiaría bastantes cosas para así sentirme mucho mejor y estar más a gusto con la gente.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r24" name="rp4">
                    <label for="r24" id="r24">Estaría bien, pero no creo que cambiara nada esencial de mi vida.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r34" name="rp4">
                    <label for="r34" id="r34">No creo que necesite cambiar nada de mí.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>¿Has logrado éxitos en tu vida?</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r15" name="rp5">
                    <label for="r15" id="r15">Sí, unos cuantos.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r25" name="rp5">
                    <label for="r25" id="r25">Sí, creo que todo lo que hago es ya un éxito.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r35" name="rp5">
                    <label for="r35" id="r35">No.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>En un grupo de personas que discuten ¿quién crees tiene razón?</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r16" name="rp6">
                    <label for="r16" id="r16">Normalmente la razón la tengo yo.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r26" name="rp6">
                    <label for="r26" id="r26">No todos, sólo algunos. Generalmente la mayoría da versiones válidas de la realidad.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r36" name="rp6">
                    <label for="r36" id="r36">Todas las personas aportan puntos de vista válidos.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>Tu superior protesta o te regaña en voz bastante alta por un trabajo tuyo diciendo que está mal hecho...</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r17" name="rp7">
                    <label for="r17" id="r17">Le escucho atentamente, procurando que la conversación se desvíe a una crítica constructiva y poder aprender de mis errores.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r27" name="rp7">
                    <label for="r27" id="r27">Que eleve la voz no se justifica en ningún caso. No tiene ningún derecho a tratarme así, por lo que no puedo escuchar lo que me dice hasta que no baje su tono de voz.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r37" name="rp7">
                    <label for="r37" id="r37">Me molesta que me regañe y lo paso mal.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>Te preocupa mucho la impresión que causas sobre los demás, si caes bien o no...</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r18" name="rp8">
                    <label for="r18" id="r18">Mucho, no soporto que alguien me tenga mal considerado.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r28" name="rp8">
                    <label for="r28" id="r28">No siempre, sólo cuando me interesa especialmente la amistad de la otra persona.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r38" name="rp8">
                    <label for="r38" id="r38">Lo que los demás piensen de mí no influirá en mi forma de ser.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>¿Preguntas, indagas Y averiguas lo que la gente prefiere de ti y lo que no?</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r19" name="rp9">
                    <label for="r19" id="r19">Sí, aunque me llevo algunos disgustos.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r29" name="rp9">
                    <label for="r29" id="r29">Sí y disfruto conociéndome a mi mismo a través de los otros.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r39" name="rp9">
                    <label for="r39" id="r39">No pregunto nada, por si acaso me encuentro con respuestas que hubiera preferido no escuchar.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>¿Crees que podrías lograr cualquier cosa que te propusieras?</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r110" name="rp10">
                    <label for="r110" id="r110">Sólo algunas cosas de las que pienso son posibles.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r210" name="rp10">
                    <label for="r210" id="r210">Me cuesta conseguir lo que quiero, no creo que pudiera.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r310" name="rp10">
                    <label for="r310" id="r310">Con trabajo, suerte y confianza, seguro que sí.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>¿Estás convencido de que tu trabajo tiene valor?</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r111" name="rp11">
                    <label for="r111" id="r111">No estoy convencido, pero hago lo que puedo porque tenga un valor.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r211" name="rp11">
                    <label for="r211" id="r211">No, más bien pienso que muchas veces no tiene valor ninguno.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r311" name="rp11">
                    <label for="r311" id="r311">Estoy convencido de que tiene mucho valor.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>Me considero una persona tímida...</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r112" name="rp12">
                    <label for="r112" id="r112">Depende del ambiente en que me mueva puedo ser más o menos tímido/a.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r212" name="rp12">
                    <label for="r212" id="r212">No me cuesta hacer amigos ni relacionarme en cualquier situación.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r312" name="rp12">
                    <label for="r312" id="r312">Creo que soy una persona especialmente tímida.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>¿Qué sientes cuando alguien recién conocido descubre por primera vez algún defecto que estabas ocultando?</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r113" name="rp13">
                    <label for="r113" id="r113">Esta pregunta presupone que oculto mis defectos, en cualquier caso, mi respuesta es que no me importa y que prefiero que los conozca cuanto antes.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r213" name="rp13">
                    <label for="r213" id="r213">Me siento muy mal y desde ese momento mi relación con esa persona ya no es la misma.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r313" name="rp13">
                    <label for="r313" id="r313">Me resulta incómodo, pero procuro no darle mayor importancia.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>¿Te has sentido herido alguna vez por lo que te ha dicho otra persona?</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r114" name="rp14">
                    <label for="r114" id="r114">Sí, me he sentido herido muchas veces.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r214" name="rp14">
                    <label for="r214" id="r214">No hay nada que puedan decir que pueda herirme.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r314" name="rp14">
                    <label for="r314" id="r314">Sí, pero sólo por palabras dichas por personas muy queridas.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>Si pudieras cambiar algo de tu carácter, ¿qué cambiarías?</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r115" name="rp15">
                    <label for="r115" id="r115">Nada.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r215" name="rp15">
                    <label for="r215" id="r215">No lo sé, son muchas cosas.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r315" name="rp15">
                    <label for="r315" id="r315">Alguna cosa.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>Cuando has tenido algún fracaso amoroso, ¿de quién has pensado que era la culpa?</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r116" name="rp16">
                    <label for="r116" id="r116">Mía, normalmente.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r216" name="rp16">
                    <label for="r216" id="r216">Del otro, normalmente.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r316" name="rp16">
                    <label for="r316" id="r316">Cada fracaso es distinto, a veces uno a veces otro.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>Si realizas un gran trabajo, ¿no es tan gran trabajo si nadie lo reconoce?</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r117" name="rp17">
                    <label for="r117" id="r117">Efectivamente, si nadie reconoce el valor de mi trabajo no merece tanto la pena.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r217" name="rp17">
                    <label for="r217" id="r217">El valor de cualquier trabajo es independiente del juicio de quien sea.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r317" name="rp17">
                    <label for="r317" id="r317">El valor de mi trabajo soy yo el único que puede juzgarlo.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>¿Alguna vez sientes que nadie te quiere?</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r118" name="rp18">
                    <label for="r118" id="r118">No es que lo sienta, es que es verdad que nadie me quiere.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r218" name="rp18">
                    <label for="r218" id="r218">Si, a veces siento que nadie me quiere.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r318" name="rp18">
                    <label for="r318" id="r318">No, sólo en alguna ocasión siento que no me comprenden, pero no es lo mismo.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r418" name="rp18">
                    <label for="r418" id="r418">Las personas a las que todo el mundo quiere no valen nada, sólo los grandes generan odios y enemigos.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r518" name="rp18">
                    <label for="r518" id="r518">Nunca me siento así, las personas que me rodean me aprecian.</label>
                    </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <h2>Si repetidamente en reuniones de trabajo o grupos de estudio tus ideas no se tienen en cuenta...</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r119" name="rp19">
                    <label for="r119" id="r119">Pienso que no merece la pena el esfuerzo porque mis ideas no son tan buenas como creía y procuro atender a las ideas de los otros, dejando en adelante de ofrecer más ideas.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r219" name="rp19">
                    <label for="r219" id="r219">Lo considero una estadística desfavorable, pero continúo aportando mis ideas si se me ocurre alguna interesante.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r319" name="rp19">
                    <label for="r319" id="r319">Abandono el grupo, ya que mis ideas no son tenidas en cuenta y procuro formar otro en el que soy el líder o ir en solitario.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>¿A dónde crees que te lleva tu forma de ser?</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r120" name="rp20">
                    <label for="r120" id="r120">Hacia una mejora constante.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r220" name="rp20">
                    <label for="r220" id="r220">Al desastre</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r320" name="rp20">
                    <label for="r320" id="r320">A la normalidad.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>Usted se considera una persona</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r121" name="rp21">
                    <label for="r121" id="r121">Introvertida</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r221" name="rp21">
                    <label for="r221" id="r221">Extrovertida</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r321" name="rp21">
                    <label for="r321" id="r321">Introvertida, pero a veces extrovertid@</label>
                    </div>
                        </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r421" name="rp21">
                    <label for="r421" id="r421">Extrovertida, pero a veces introvertid@</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>¿Para usted estar en una relación con una persona menor que usted, hasta cuantos años aceptaría?</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r122" name="rp22">
                    <label for="r122" id="r122">De 1 a 3 años de diferencia</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r222" name="rp22">
                    <label for="r222" id="r222">De 3 a 5 años de diferencia</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r322" name="rp22">
                    <label for="r322" id="r322">De 5 a 8 años de diferencia</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r422" name="rp22">
                    <label for="r422" id="r422">De 8 a más años de diferencia</label>
                    </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <h2>Si usted necesita de un alumn@ para algún favor y el niño o niña se niega usted:</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r123" name="rp23">
                    <label for="r123" id="r123">Lo amenaza para que cumpla con lo que necesita.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r223" name="rp23">
                    <label for="r223" id="r223">Trata de ganarse la confianza para poder lograr sus objetivos.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r323" name="rp23">
                    <label for="r323" id="r323">Le muestra sus planes para que el alumno se motive.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r423" name="rp23">
                    <label for="r423" id="r423">Le trato de explicar mis planes de una manera que pueda entender.</label>
                    </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <h2>Si tuviera que castigar a un alumno de qué manera lo haría</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r124" name="rp24">
                    <label for="r124" id="r124">Buscaría ayuda de Padres, para crear un dialogo entre autoridad, alumno y maestro para de esa manera buscar una solución.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r224" name="rp24">
                    <label for="r224" id="r224">Lo reprendería usted siempre con rectitud y tenacidad.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r324" name="rp24">
                    <label for="r324" id="r324">Lo dejaría sin castigar, pero hablaría con el alumno y el rector.</label>
                    </div>
                        </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r424" name="rp24">
                    <label for="r424" id="r424">Hablaría con el alumno para solucionarlo sin necesidad de hablar con los padres.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>Si usted muestra una escena con contenido sexual a un alumno o alumna sin querer usted:</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r125" name="rp25">
                    <label for="r125" id="r125">Justificaría que es de valor educativo sin malicia y para que tengan conocimiento sexual.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r225" name="rp25">
                    <label for="r225" id="r225">Pararía la escena para poder hablar de ello con los niños.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r325" name="rp25">
                    <label for="r325" id="r325">Pararía la escena y no hablaría con los alumnos.</label>
                    </div>
                        </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r425" name="rp25">
                    <label for="r425" id="r425">Pararía la escena y les explicaría que fue mi error.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>Para usted hablar con un alumno de un asunto serio usted:</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r126" name="rp26">
                    <label for="r126" id="r126">Hablaría con el o ella tratándolo como un adulto tratándolo como igual.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r226" name="rp26">
                    <label for="r226" id="r226">Hablaría con el o ella tratándolo como una persona menor que yo.</label>
                    </div>
                    </div>
                    
                </div>
                
                <div class="form-group">
                    <h2>Si el niño o niña es hijo de padre o madre solter@ y necesita ayuda con el cuidado del niño:</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r127" name="rp27">
                    <label for="r127" id="r127">Me ofrecería como voluntario para cuidar del alumno con recompensa monetaria.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r227" name="rp27">
                    <label for="r227" id="r227">Me ofrecería como voluntario para cuidar del alumno sin recompensa monetaria.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r327" name="rp27">
                    <label for="r327" id="r327">No me ofrecería como voluntario para cuidar del alumno.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>Usted trata de ganarse la confianza de los estudiantes que técnica emplearía</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r128" name="rp28">
                    <label for="r128" id="r128">Sería un maestro recto y tajante</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r228" name="rp28">
                    <label for="r228" id="r228">Sería flexible y amoroso</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r328" name="rp28">
                    <label for="r328" id="r328">Sería un maestro carismático</label>
                    </div>
                        </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r428" name="rp28">
                    <label for="r428" id="r428">Sería relajado y sin preocupaciones</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>Qué opina de la educación sexual en alumnos</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r129" name="rp29">
                    <label for="r129" id="r129">Es una educación que deben enseñar los padres o especialistas.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r229" name="rp29">
                    <label for="r229" id="r229">Es una educación que deben enseñar los profesores.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r329" name="rp29">
                    <label for="r329" id="r329">Es una educación que deben enseñar los profesores y padres.</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>Al momento de hacer contacto físico con el alumno usted:</h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r130" name="rp30">
                    <label for="r130" id="r130">Tocaría todas las partes necesarias de todo el cuerpo para que pueda realizar bien alguna actividad.</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r230" name="rp30">
                    <label for="r230" id="r230">Tocaría cualquier parte solo si el alumno me lo permite.</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r330" name="rp30">
                    <label for="r330" id="r330">Tocaría solo extremidades superiores</label>
                    </div>
                        </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r430" name="rp30">
                    <label for="r430" id="r430">Tocaría tronco y extremidades inferiores</label>
                    </div>
                        </div>
                </div>
                
                <div class="form-group">
                    <h2>¿Le gustan las personas menores de edad? </h2>
                    <br>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r131" name="rp31">
                    <label for="r131" id="r131">Si</label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r231" name="rp31">
                    <label for="r231" id="r231">No</label>
                    </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                    <input type="radio" id="r331" name="rp31">
                    <label for="r331" id="r331">A veces o dependiendo alguna circunstancia</label>
                    </div>
                        </div>
                </div>
                
                
                
                    
                </div>
            <div class="button">
                <%--<center><button type="button" class="btn btn-success" id="enviar">Enviar Test</button></center>--%>
                <center><input class="btn btn-success" type="submit" name="enviar" id="enviar" value="Enviar Test"/> </center>
                
            </div>
            
        </form>
        
    
    
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>