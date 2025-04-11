.class public interface abstract Lcom/android/server/pm/pkg/AndroidPackageSplit;
.super Ljava/lang/Object;
.source "AndroidPackageSplit.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# virtual methods
.method public abstract getClassLoaderName()Ljava/lang/String;
.end method

.method public abstract getDependencies()Ljava/util/List;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getRevisionCode()I
.end method

.method public abstract isHasCode()Z
.end method
