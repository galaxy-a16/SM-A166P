.class public interface abstract Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
.super Ljava/lang/Object;
.source "PackageManagerLocal.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract filtered(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
.end method

.method public abstract getDisabledSystemPackageStates()Ljava/util/Map;
.end method

.method public abstract getPackageStates()Ljava/util/Map;
.end method
