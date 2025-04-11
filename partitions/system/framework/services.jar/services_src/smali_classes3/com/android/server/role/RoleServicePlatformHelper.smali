.class public interface abstract Lcom/android/server/role/RoleServicePlatformHelper;
.super Ljava/lang/Object;
.source "RoleServicePlatformHelper.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# virtual methods
.method public abstract computePackageStateHash(I)Ljava/lang/String;
.end method

.method public abstract getLegacyRoleState(I)Ljava/util/Map;
.end method
