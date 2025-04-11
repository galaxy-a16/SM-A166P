.class public interface abstract Lcom/android/server/infra/ServiceNameResolver;
.super Ljava/lang/Object;
.source "ServiceNameResolver.java"


# virtual methods
.method public abstract dumpShort(Ljava/io/PrintWriter;)V
.end method

.method public abstract dumpShort(Ljava/io/PrintWriter;I)V
.end method

.method public abstract getDefaultServiceName(I)Ljava/lang/String;
.end method

.method public getDefaultServiceNameList(I)[Ljava/lang/String;
    .locals 1

    .line 73
    invoke-interface {p0}, Lcom/android/server/infra/ServiceNameResolver;->isConfiguredInMultipleMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-interface {p0, p1}, Lcom/android/server/infra/ServiceNameResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 74
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getting default service list not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getServiceName(I)Ljava/lang/String;
    .locals 0

    .line 105
    invoke-interface {p0, p1}, Lcom/android/server/infra/ServiceNameResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceNameList(I)[Ljava/lang/String;
    .locals 0

    .line 117
    invoke-interface {p0, p1}, Lcom/android/server/infra/ServiceNameResolver;->getDefaultServiceNameList(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isConfiguredInMultipleMode()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isDefaultServiceEnabled(I)Z
    .locals 0

    .line 195
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "checking default service not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isTemporary(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public resetTemporaryService(I)V
    .locals 0

    .line 164
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "temporary user not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDefaultServiceEnabled(IZ)Z
    .locals 0

    .line 182
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "changing default service not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnTemporaryServiceNameChangedCallback(Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setServiceNameList(Ljava/util/List;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public setTemporaryService(ILjava/lang/String;I)V
    .locals 0

    .line 139
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "temporary user not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTemporaryServices(I[Ljava/lang/String;I)V
    .locals 0

    .line 154
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "temporary user not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
