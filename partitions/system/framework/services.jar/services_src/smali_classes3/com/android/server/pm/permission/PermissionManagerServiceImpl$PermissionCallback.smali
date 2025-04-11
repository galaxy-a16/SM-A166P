.class public abstract Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
.super Ljava/lang/Object;
.source "PermissionManagerServiceImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onGidsChanged(II)V
.end method

.method public abstract onInstallPermissionGranted()V
.end method

.method public abstract onInstallPermissionRevoked()V
.end method

.method public abstract onInstallPermissionUpdatedNotifyListener(I)V
.end method

.method public abstract onPermissionGranted(II)V
.end method

.method public abstract onPermissionRemoved()V
.end method

.method public onPermissionRevoked(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;Z)V

    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public abstract onPermissionRevoked(IILjava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract onPermissionUpdated([IZ)V
.end method

.method public abstract onPermissionUpdatedNotifyListener([IZI)V
.end method
