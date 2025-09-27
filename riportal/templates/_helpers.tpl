{{- define "riportal.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{- define "riportal.labels" -}}
app.kubernetes.io/name: {{ include "riportal.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/version: {{ .Values.image.tag | quote }}
{{- end -}}

{{- define "riportal.selectorLabels" -}}
app.kubernetes.io/name: {{ include "riportal.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
