.class public Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;
.super Lcom/android/server/location/injector/SystemUserInfoHelper;
.source "LocationManagerService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 296
    invoke-direct {p0, p1}, Lcom/android/server/location/injector/SystemUserInfoHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCurrentUserChanged(II)V
    .locals 0

    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/injector/UserInfoHelper;->dispatchOnCurrentUserChanged(II)V

    return-void
.end method

.method public onUserStarted(I)V
    .locals 0

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/UserInfoHelper;->dispatchOnUserStarted(I)V

    return-void
.end method

.method public onUserStopped(I)V
    .locals 0

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/UserInfoHelper;->dispatchOnUserStopped(I)V

    return-void
.end method
