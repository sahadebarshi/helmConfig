{{- define "myTemplate.Fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimAll "-" -}}
{{- end -}}

{{- define "myTemplate.Variable" -}}
{{- $fullName := printf "%s-%s" .Release.Name .Chart.Name -}}
{{- $fullName | trunc 63 | trimAll "-" -}}
{{- end -}}

{{- define "myTemplate.selectorLabel" -}}
app: {{ .Chart.Name }}
release: {{ .Release.Name }}
{{- end -}}

{{- define "test.withFunction" -}}
{{- with .Values.container.volume }}
{{- printf "%s" .name -}}
{{- end }}
{{- end -}}

{{- define "myTemplate.portMap" -}}
{{- with .Values.portMap.env -}}
{{- range $key, $value := . -}}
{{- printf "%s: %s \n" $key $value -}}
{{- end -}}
{{- end -}}
{{- end -}}