.class public abstract Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;
.super Ljava/lang/Object;
.source "CredentialManagerService.java"


# virtual methods
.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getPolicyManager()Lcom/samsung/ucm/ucmservice/PolicyManager;
.end method

.method public abstract getUcmSecurityHelper()Lcom/samsung/ucm/ucmservice/security/UcmSecurityHelper;
.end method

.method public abstract getUcmServiceAgentManager(Lcom/samsung/ucm/ucmservice/security/UcmSecurityHelper;)Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;
.end method

.method public abstract getUcmSignHelperFactory()Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;
.end method
