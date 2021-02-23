::============================================================================
:: Apolicy requires this file to apply remediation patches to your Helm chart.
:: Run "apolicy helm install" to use Apolicy patches.
:: For more information, follow the link: https://my.apolicy.io/app/docs
::============================================================================
@echo off
pushd %~dp0
set script_dir=%CD%
popd
more > %script_dir%\all.yaml
kustomize build "%script_dir%" && del %script_dir%\all.yaml
