.class public Lcom/android/server/MethodPermissionPackage;
.super Lcom/android/server/PermissionPackage;
.source "ServiceKeeper.java"


# instance fields
.field public isSterileMethod:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 485
    invoke-direct {p0}, Lcom/android/server/PermissionPackage;-><init>()V

    const/4 v0, 0x1

    .line 486
    iput-boolean v0, p0, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    return-void
.end method
