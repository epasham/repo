{{- define "pnnlmiscscripts.chronyd.server" -}}
{{- if and (hasKey . "section") (kindIs "bool" .section) (hasKey .section "server") .section.server -}}
{{ .section.server }}
{{- else -}}
docker.io
{{- end -}}
{{- end -}}

{{- define "pnnlmiscscripts.chronyd.prefix" -}}
{{- if and (hasKey . "section") (hasKey .section "prefix") .section.prefix -}}
/{{ .section.prefix }}
{{- end -}}
{{- end -}}

{{- define "pnnlmiscscripts.chronyd.org" -}}
{{- if and (hasKey . "section") (hasKey .section "org") .section.org -}}
{{ .section.org }}
{{- else -}}
pnnlmiscscripts
{{- end -}}
{{- end -}}

{{- define "pnnlmiscscripts.chronyd.repo" -}}
{{- if and (hasKey . "section") (hasKey .section "repo") .section.repo -}}
{{ .section.repo }}
{{- else -}}
chronyd
{{- end -}}
{{- end -}}

{{- define "pnnlmiscscripts.chronyd.tag" -}}
{{- if and (hasKey . "section") (hasKey .section "tag") .section.tag -}}
{{ .section.tag }}
{{- else -}}
3.4-1
{{- end -}}
{{- end -}}

{{- /*
How to use:
  {{ dict "dot" . "section" (index .Values "chronyd") | include "pnnlmiscscripts.chronyd.image" }}
*/ -}}
{{- define "pnnlmiscscripts.chronyd.image" -}}
{{- include "pnnlmiscscripts.chronyd.server" . -}}{{- include "pnnlmiscscripts.chronyd.prefix" . -}}/{{- include "pnnlmiscscripts.chronyd.org" . -}}/{{- include "pnnlmiscscripts.chronyd.repo" . -}}:{{- include "pnnlmiscscripts.chronyd.tag" . -}}
{{- end -}}
