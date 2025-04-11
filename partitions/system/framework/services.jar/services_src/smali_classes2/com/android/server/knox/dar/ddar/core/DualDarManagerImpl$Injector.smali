.class public Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;
.super Ljava/lang/Object;
.source "DualDarManagerImpl.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# virtual methods
.method public binderClearCallingIdentity()J
    .locals 2

    .line 90
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public binderRestoreCallingIdentity(J)V
    .locals 0

    .line 94
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public getAlarmManager()Landroid/app/AlarmManager;
    .locals 1

    .line 86
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method
