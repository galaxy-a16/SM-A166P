.class public final Lc3/e0;
.super Lc3/v;
.source "SourceFile"


# instance fields
.field public final g:Landroid/os/IBinder;

.field public final synthetic h:Lc3/e;


# direct methods
.method public constructor <init>(Lc3/e;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lc3/e0;->h:Lc3/e;

    invoke-direct {p0, p1, p2, p4}, Lc3/v;-><init>(Lc3/e;ILandroid/os/Bundle;)V

    iput-object p3, p0, Lc3/e0;->g:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final a(La3/b;)V
    .locals 0

    iget-object p0, p0, Lc3/e0;->h:Lc3/e;

    iget-object p0, p0, Lc3/e;->p:Lc3/c;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lc3/c;->d(La3/b;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public final b()Z
    .locals 4

    iget-object v0, p0, Lc3/e0;->g:Landroid/os/IBinder;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lc3/e0;->h:Lc3/e;

    invoke-virtual {p0}, Lc3/e;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lc3/e;->p()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "service descriptor mismatch: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " vs. "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lc3/e;->i(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-static {p0, v2, v3, v0}, Lc3/e;->u(Lc3/e;IILandroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    invoke-static {p0, v2, v3, v0}, Lc3/e;->u(Lc3/e;IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lc3/e;->t:La3/b;

    iget-object p0, p0, Lc3/e;->o:Lc3/b;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lc3/b;->c()V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1

    :catch_0
    const-string p0, "service probably died"

    :goto_0
    const-string v0, "GmsClient"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
