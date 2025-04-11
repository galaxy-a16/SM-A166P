.class public abstract Lcom/google/android/gms/measurement/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile d:Ll3/c;


# instance fields
.field public final a:Lcom/google/android/gms/measurement/internal/b4;

.field public final b:Landroidx/appcompat/widget/k;

.field public volatile c:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/b4;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j;->a:Lcom/google/android/gms/measurement/internal/b4;

    new-instance v0, Landroidx/appcompat/widget/k;

    const/16 v1, 0x13

    invoke-direct {v0, v1, p0, p1}, Landroidx/appcompat/widget/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->b:Landroidx/appcompat/widget/k;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/j;->c:J

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->d()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j;->b:Landroidx/appcompat/widget/k;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract b()V
.end method

.method public final c(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->a()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->a:Lcom/google/android/gms/measurement/internal/b4;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/b4;->e()Lg3/a;

    move-result-object v0

    check-cast v0, Lc3/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/j;->c:J

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->d()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j;->b:Landroidx/appcompat/widget/k;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j;->a:Lcom/google/android/gms/measurement/internal/b4;

    invoke-interface {p0}, Lcom/google/android/gms/measurement/internal/b4;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v0, "Failed to schedule delayed post. time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final d()Landroid/os/Handler;
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/j;->d:Ll3/c;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/measurement/internal/j;->d:Ll3/c;

    return-object p0

    :cond_0
    const-class v0, Lcom/google/android/gms/measurement/internal/j;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/j;->d:Ll3/c;

    if-nez v1, :cond_1

    new-instance v1, Ll3/c;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j;->a:Lcom/google/android/gms/measurement/internal/b4;

    invoke-interface {p0}, Lcom/google/android/gms/measurement/internal/b4;->c()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, p0}, Ll3/c;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/j;->d:Ll3/c;

    :cond_1
    sget-object p0, Lcom/google/android/gms/measurement/internal/j;->d:Ll3/c;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
