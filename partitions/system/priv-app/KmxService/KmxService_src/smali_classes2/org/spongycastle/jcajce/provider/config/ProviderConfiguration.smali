.class public interface abstract Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAcceptableNamedCurves()Ljava/util/Set;
.end method

.method public abstract getAdditionalECParameters()Ljava/util/Map;
.end method

.method public abstract getDHDefaultParameters(I)Ljavax/crypto/spec/DHParameterSpec;
.end method

.method public abstract getEcImplicitlyCa()Lorg/spongycastle/jce/spec/ECParameterSpec;
.end method
