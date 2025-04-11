.class public abstract Lcom/samsung/ucm/ucmservice/PolicyManager;
.super Ljava/lang/Object;
.source "PolicyManager.java"


# virtual methods
.method public abstract containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z
.end method

.method public abstract getWifiCertificateAliasesAsUser(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
.end method

.method public abstract getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
.end method

.method public abstract getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
.end method

.method public abstract getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;
.end method

.method public abstract isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z
.end method

.method public abstract isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I
.end method

.method public abstract isStorageEnabled(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
.end method
