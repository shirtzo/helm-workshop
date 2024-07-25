{{- define "app.readinessProbe" -}}
httpGet:
  port: {{ .Values.containers.containerPort }} 
  {{- tpl (toYaml .Values.probes.readiness.probeMapping) . | nindent 2 }}
{{- tpl (toYaml .Values.probes.readiness.probeConfig) . | nindent 0}}
{{- end -}}

{{- define "app.livenessProbe" -}}
httpGet:
  port: {{ .Values.containers.containerPort }} 
  {{- tpl (toYaml .Values.probes.liveness.probeMapping) . | nindent 2 }}
{{- tpl (toYaml .Values.probes.liveness.probeConfig) . | nindent 0}}
{{- end -}}