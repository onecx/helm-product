{{- define "product.fullname" -}}
    {{- if .Values.info.data.name -}}
        {{ .Values.info.data.name }}
    {{- else -}}
        {{ .Release.Name }}
    {{- end -}}
{{- end -}}

{{- define "product.labels.common" -}}
version: {{ .Values.version }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
app.kubernetes.io/name: {{ template "product.fullname" $ }}
{{- end -}}

