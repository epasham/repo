{{- define "pnnlmiscscripts.k8s-node-image-nginx-1-15.server" -}}
{{- if and (hasKey . "section") (hasKey .section "server") .section.server -}}
{{ .section.server }}
{{- else -}}
docker.io
{{- end -}}
{{- end -}}

{{- define "pnnlmiscscripts.k8s-node-image-nginx-1-15.prefix" -}}
{{- if and (hasKey . "section") (hasKey .section "prefix") .section.prefix -}}
/{{ .section.prefix }}
{{- end -}}
{{- end -}}

{{- define "pnnlmiscscripts.k8s-node-image-nginx-1-15.org" -}}
{{- if and (hasKey . "section") (hasKey .section "org") .section.org -}}
{{ .section.org }}
{{- else -}}
pnnlmiscscripts
{{- end -}}
{{- end -}}

{{- define "pnnlmiscscripts.k8s-node-image-nginx-1-15.repo" -}}
{{- if and (hasKey . "section") (hasKey .section "repo") .section.repo -}}
{{ .section.repo }}
{{- else -}}
k8s-node-image
{{- end -}}
{{- end -}}

{{- define "pnnlmiscscripts.k8s-node-image-nginx-1-15.tag" -}}
{{- if and (hasKey . "section") (hasKey .section "tag") .section.tag -}}
{{ .section.tag }}
{{- else -}}
1.15.5-nginx-1
{{- end -}}
{{- end -}}

{{- /*
How to use:
  {{ dict "dot" . "section" (index .Values "k8s-node-image-nginx-1-15") | include "pnnlmiscscripts.k8s-node-image-nginx-1-15.image" }}
*/ -}}
{{- define "pnnlmiscscripts.k8s-node-image-nginx-1-15.image" -}}
{{- include "pnnlmiscscripts.k8s-node-image-nginx-1-15.server" . -}}{{- include "pnnlmiscscripts.k8s-node-image-nginx-1-15.prefix" . -}}/{{- include "pnnlmiscscripts.k8s-node-image-nginx-1-15.org" . -}}/{{- include "pnnlmiscscripts.k8s-node-image-nginx-1-15.repo" . -}}:{{- include "pnnlmiscscripts.k8s-node-image-nginx-1-15.tag" . -}}
{{- end -}}
