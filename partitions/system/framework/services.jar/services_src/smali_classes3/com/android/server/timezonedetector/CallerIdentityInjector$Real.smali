.class public Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;
.super Ljava/lang/Object;
.source "CallerIdentityInjector.java"

# interfaces
.implements Lcom/android/server/timezonedetector/CallerIdentityInjector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCallingIdentity()J
    .locals 2

    .line 54
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCallingUserId()I
    .locals 0

    .line 49
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    return p0
.end method

.method public restoreCallingIdentity(J)V
    .locals 0

    .line 59
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method
