.class public abstract Lcom/samsung/android/mcfds/lib/sem/SemWrapper;
.super Ljava/lang/Object;
.source "SemWrapper.java"


# direct methods
.method public static semBindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->semBindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method
