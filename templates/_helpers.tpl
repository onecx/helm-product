{{- define "product.fullname" -}}
    {{ .Release.Name }}
{{- end -}}

{{- define "product.labels.common" -}}
version: {{ .Values.version }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
app.kubernetes.io/name: {{ template "product.fullname" $ }}
{{- end -}}

