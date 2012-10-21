function siguiente2body(){
	return '<p class="lead">Con respecto a tu respuesta a la pregunta te pedimos que contestes las siguientes preguntas:</p><form id="preguntas-abiertas" class="form-horizontal"><p class="advice">Por favor rellena los campos requeridos</p><div class="control-group">'+
	//////////////////////////////////////////////////////////////////////////////////////////////////////////
	'<label for="about" class="control-label">¿Cuál es tu prioridad?</label>'+
	'<div class="controls">'+
	'<textarea class="input-xlarge" id="prioridad" rows="2"></textarea>'+
	'</div>'+
	'</div>'+
	//////////////////////////////////////////////////////////////////////////////////////////////////////////
	'<div class="control-group">'+
	'<label for="today" class="control-label">¿Cómo es Tijuana hoy? </label>'+
	'<div class="controls"><textarea class="input-xlarge" id="today" name="today" rows="2"></textarea></div>'+
	//////////////////////////////////////////////////////////////////////////////////////////////////////////
	'</div><div class="control-group"><label for="futuro" class="control-label">¿Si estas propuestas se llevan a cabo, cómo será Tijuana en el futuro?</label>'+
	'<div class="controls">'+
	'<textarea class="input-xlarge" id="futuro" name="futuro" rows="2"></textarea>'+
	'</div>'+
	'</div>'+
	/////////////////////
	'<div class="control-group">'+
	'<label for="hacer" class="control-label">¿Tu ya estás haciendo algo para lograr esta Tijuana de tus sueños?</label>'+
			
	'<div class="controls">'+
	'<label class="inline" for="btnsi">'+
	'<input type="radio" class="" value="si" name="hacer" id="btnsi">'+
	'Si'+
	'</label>'+
	'<label class="inline" for="btnno"><input type="radio" class="" value="no" name="hacer" id="btnno">'+
	'No'+
	'	</label>'+
	'</div>'+
	'</div>'+
	'</div>'+
	'</form>'
}

function siguiente1body(){
	return '<p>Presiona el boton de grabar cuando estes listo</p><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" type="application/x-shockwave-flash" width="320px" height="263px" id="InsertWidget_e5685f1f-c977-450a-a800-1afc9cffd5e5" align="middle"><param name="movie" value="http://www.widgetserver.com/syndication/flash/wrapper/InsertWidget.swf"/><param name="quality" value="high" /><param name="wmode" value="transparent" /><param name="menu" value="false" /><param name="flashvars" value="r=2&appId=e5685f1f-c977-450a-a800-1afc9cffd5e5" /><param name="allowScriptAccess" value="sameDomain" /> <embed src="http://www.widgetserver.com/syndication/flash/wrapper/InsertWidget.swf"  name="InsertWidget_e5685f1f-c977-450a-a800-1afc9cffd5e5"  width="320px" height="263px" quality="high" menu="false" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent" align="middle"  allowScriptAccess="sameDomain" flashvars="r=2&appId=e5685f1f-c977-450a-a800-1afc9cffd5e5" ></embed></object>'
}

function siguientebody(){
	return "<p>A continuacion deberas grabar un video respondiendo la siguiente pregunta:</p><p><strong>¿Cómo es la Tijuana de tus sueños y tú que harías o tú qué propones para alcanzar ese ideal?</strong></p>"
}

function unmodal(){
	return '<form id="registro" class="form-horizontal">'+
	'<p class="advice">Por favor rellena los campos requeridos</p>'+
	'<div class="control-group">'+
	'<label for="nombrei" class="control-label">Nombre</label>'+
	'<div class="controls">'+
	'<input type="text" id="nombrei" name="nombrei"/>'+
	'</div>'+
	'</div>'+
	'<div class="control-group">'+
	'<label for="sexo" class="control-label">Sexo</label>'+
	'<div class="controls">'+
	'<label class="inline" for="btnHombre">'+
	'<input type="radio" class="" value="Masculino" name="sexo" id="btnHombre">'+
	'Hombre'+
	'</label>'+
	'<label class="inline" for="btnMujer"><input type="radio" class="" value="Femenino" name="sexo" id="btnMujer">'+
	'Mujer'+
	'</label>'+
	'</div>'+
	'</div>'+

	'<div class="control-group">'+
	'<label for="edadp" class="control-label">Edad</label>'+
	'<div class="controls">'+
	'		<select id="edadp" name="edadp" class="span1"><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option><option>11</option><option>12</option><option>13</option><option>14</option><option>15</option><option>16</option><option>17</option><option>18</option><option>19</option><option>20</option><option>21</option><option>22</option><option>23</option><option>24</option><option>25</option><option>26</option><option>27</option><option>28</option><option>29</option><option>30</option><option>31</option><option>32</option><option>33</option><option>34</option><option>35</option><option>36</option><option>37</option><option>38</option><option>39</option><option>40</option><option>41</option><option>42</option><option>43</option><option>44</option><option>45</option><option>46</option><option>47</option><option>48</option><option>49</option><option>50</option><option>51</option><option>52</option><option>53</option><option>54</option><option>55</option><option>56</option><option>57</option><option>58</option><option>59</option><option>60</option><option>61</option><option>62</option><option>63</option><option>64</option><option>65</option><option>66</option><option>67</option><option>68</option><option>69</option><option>70</option><option>71</option><option>72</option><option>73</option><option>74</option><option>75</option><option>76</option><option>77</option><option>78</option><option>79</option><option>80</option><option>81</option><option>82</option><option>83</option><option>84</option><option>85</option><option>86</option><option>87</option><option>88</option><option>89</option><option>90</option><option>91</option><option>92</option><option>93</option><option>94</option><option>95</option><option>96</option><option>97</option><option>98</option><option>99</option><option>100</option><option>101</option><option>102</option><option>103</option><option>104</option><option>105</option><option>106</option><option>107</option><option>108</option><option>109</option></select>'+
	'		</div>'+
	'	</div>'+
	'	<div class="control-group">'+
	'		<label for="cp" class="control-label">C.P.</label>'+
	'		<div class="controls">'+
	'			<input type="text" id="cp" name="cp" class="span2"/>'+
	'			<span class="help-block"><small>Opcional</small></span>'+
	'		</div>'+
	'	</div>'+

	'					<div class="control-group">'+
	'						<label for="sexo" class="control-label">Estado de origen</label>'+
	'						<div class="controls">'+
	'							<select name="estadoForzado" id="estadoForzado">'+
	'								<option>Aguascalientes</option>'+
	'								<option>Baja California</option>'+
	'								<option>Baja California Sur</option>'+
	'								<option>Campeche</option>'+
	'								<option>Chiapas</option>'+
	'								<option>Chihuahua</option>'+
	'								<option>Coahuila</option>'+
	'								<option>Colima</option>'+
	'								<option>Distrito Federal</option>'+
	'								<option>Durango</option>'+
	'								<option>Estado de México</option>'+
	'								<option>Guanajuato</option>'+
	'								<option>Guerrero</option>'+
	'								<option>Hidalgo</option>'+
	'								<option>Jalisco</option>'+
	'								<option>Michoacán</option>'+
	'								<option>Morelos</option>'+
	'								<option>Nayarit</option>'+
	'								<option>Nuevo León</option>'+
	'								<option>Oaxaca</option>'+
	'								<option>Puebla</option>'+
	'								<option>Querétaro</option>'+
	'								<option>Quintana Roo</option>'+
	'								<option>San Luis Potosí</option>'+
	'								<option>Sinaloa</option>'+
	'								<option>Sonora</option>'+
	'								<option>Tabasco</option>'+
	'								<option>Tamaulipas</option>'+
	'								<option>Tlaxcala</option>'+
	'								<option>Veracruz</option>'+
	'								<option>Yucatán</option>'+
	'								<option>Zacatecas</option>'+
	'							</select>'+
	'						</div>'+
	'					</div>'+
	'				</form>'
}

function sanitize_string(string){
	var resultado = blank(string)
	if(resultado){
		string =	$.trim(string)
		resultado = string.htmlEntities()
	}
	return resultado
}

String.prototype.htmlEntities = function () {
	return this.replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;').replace(/"/g, '&quot;');
};

function blank(s){
	var isNonblank_re    = /\S/
	return String (s).search (isNonblank_re) != -1
}