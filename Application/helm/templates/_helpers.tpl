{{- define "app.readinessProbe" -}}
httpGet:
  port: {{ .Values.containers.containerPort }} 
  {{- tpl (toYaml .Values.probes.readiness.httpGet) . | nindent 2 }}
{{- tpl (toYaml .Values.probes.readiness.baseConfig) . | nindent 0}}
{{- end -}}

{{- define "app.livenessProbe" -}}
httpGet:
  port: {{ .Values.containers.containerPort }} 
  {{- tpl (toYaml .Values.probes.liveness.httpGet) . | nindent 2 }}
{{- tpl (toYaml .Values.probes.liveness.baseConfig) . | nindent 0}}
{{- end -}}