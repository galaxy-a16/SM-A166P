.class interface abstract Lcom/android/server/pm/FeatureConfig;
.super Ljava/lang/Object;
.source "FeatureConfig.java"


# virtual methods
.method public abstract enableLogging(IZ)V
.end method

.method public abstract isGloballyEnabled()Z
.end method

.method public abstract isLoggingEnabled(I)Z
.end method

.method public abstract onSystemReady()V
.end method

.method public abstract packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z
.end method

.method public abstract snapshot()Lcom/android/server/pm/FeatureConfig;
.end method

.method public abstract updatePackageState(Lcom/android/server/pm/pkg/PackageStateInternal;Z)V
.end method
